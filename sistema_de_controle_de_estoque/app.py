from flask import Flask, make_response, jsonify, request, url_for, render_template, redirect, flash, session
from datetime import datetime
import mysql.connector
import pymysql


app = Flask(__name__)

app.secret_key = 'sua_chave_secreta_aqui'  # Adicione uma chave secreta

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'admin' #admin
app.config['MYSQL_DB'] = 'db_distribuidora'

def get_db_connection():
    return mysql.connector.connect(
        host = app.config['MYSQL_HOST'],
        user = app.config['MYSQL_USER'],
        password = app.config['MYSQL_PASSWORD'],
        database = app.config['MYSQL_DB']
    )

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/cadastro')
def cadastro():
    return render_template('cadastro_de_produtos.html')

@app.route('/banco', methods=['GET'])
def get_produto():
    db = get_db_connection()
    cursor = db.cursor(dictionary = True)
    cursor.execute('SELECT * FROM tb_produto')
    produtos = cursor.fetchall()

    for produto in produtos:
        print(produto)

    cursor.close()
    db.close()
    return render_template('relatorio.html', produtos=produtos)

@app.route('/produtos', methods=['GET', 'POST'])
def registrar():
    if request.method == 'POST':
        nome = request.form['nome']
        data = request.form.get('datetime', datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
        categoria = request.form['categoria']  
        custo = request.form['custo']
        preco = request.form['preco']
        estoque = request.form['estoque']
        descricao = request.form['descricao']

        db = get_db_connection()
        cursor = db.cursor()
        
        cursor.execute('SELECT MAX(pro_id) FROM tb_produto')
        max_id = cursor.fetchone()[0]  

        if max_id is None:
            max_id = 0 

        novo_id = max_id + 1
        
        cursor.execute(
            'INSERT INTO tb_produto (pro_id, pro_nome, pro_data, pro_custo, pro_preco, pro_estoque, pro_descricao) '
            'VALUES (%s, %s, %s, %s, %s, %s, %s)',
            (novo_id, nome, data, float(custo), float(preco), int(estoque), descricao)
        )
        
        cursor.execute(
            'INSERT INTO tb_categoria (cat_pro_id, cat_nome) VALUES (%s, %s)',
            (novo_id, categoria)
        )

        db.commit()

        cursor.close()
        db.close()

        novo_produto = {
            'pro_id': novo_id,
            'pro_nome': nome,
            'pro_custo': float(custo),
            'pro_preco': float(preco),
            'pro_estoque': int(estoque),
            'pro_descricao': descricao,
            'pro_data': data,
            'categoria': categoria
        }

        return render_template('adicionado.html', produto=novo_produto)


@app.route('/deletar/<int:pro_id>', methods=['POST'])
def deletar_produto(pro_id):
    db = get_db_connection()
    cursor = db.cursor()
    
    cursor.execute('DELETE FROM tb_produto WHERE pro_id = %s', (pro_id,))
    db.commit()
    
    cursor.close()
    db.close()

    return redirect(url_for('home'))

# Sei lá:
@app.route('/gestao_de_movimentacao', methods=['GET', 'POST'])
def registrar_movimentacao():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    if request.method == 'POST':
        mov_pro_id = request.form.get('mov_pro_id')
        mov_quantidade = int(request.form.get('mov_quantidade'))
        mov_tipo = request.form.get('mov_tipo')
        mov_data = request.form.get('mov_data', datetime.now().strftime('%Y-%m-%d %H:%M:%S'))

        # Validação de dados
        if not mov_pro_id or not mov_quantidade or not mov_tipo:
            flash("Erro: Todos os campos são obrigatórios!", "error")
            return redirect(url_for('registrar_movimentacao'))

        # Consultar a quantidade atual no estoque
        cursor.execute('SELECT pro_estoque FROM tb_produto WHERE pro_id = %s', (mov_pro_id,))
        estoque_atual = cursor.fetchone()

        if estoque_atual is None:
            flash("Erro: Produto não encontrado!", "error")
            return redirect(url_for('registrar_movimentacao'))

        estoque_atual = estoque_atual['pro_estoque']

        # Verificar se já existe um registro de movimentação para este produto e data
        cursor.execute('''
            SELECT mov_id, mov_quantidade FROM tb_movimentacoes 
            WHERE mov_pro_id = %s AND mov_data = %s
        ''', (mov_pro_id, mov_data))
        registro_existente = cursor.fetchone()

        if registro_existente:
            # Atualizar a movimentação existente
            nova_quantidade = registro_existente['mov_quantidade'] + mov_quantidade
            cursor.execute('''
                UPDATE tb_movimentacoes 
                SET mov_quantidade = %s, mov_tipo = %s 
                WHERE mov_id = %s
            ''', (nova_quantidade, mov_tipo, registro_existente['mov_id']))
        else:
            # Inserir nova movimentação
            cursor.execute('''
                INSERT INTO tb_movimentacoes (mov_pro_id, mov_quantidade, mov_tipo, mov_data) 
                VALUES (%s, %s, %s, %s)
            ''', (mov_pro_id, mov_quantidade, mov_tipo, mov_data))

        # Atualizando o estoque baseado no movimento
        if mov_tipo == 'Entrada':
            novo_estoque = estoque_atual + mov_quantidade
        elif mov_tipo == 'Saída':
            if estoque_atual < mov_quantidade:
                flash("Erro: Estoque insuficiente para a saída!", "error")
                return redirect(url_for('registrar_movimentacao'))
            novo_estoque = estoque_atual - mov_quantidade

        cursor.execute('''
            UPDATE tb_produto 
            SET pro_estoque = %s 
            WHERE pro_id = %s
        ''', (novo_estoque, mov_pro_id))

        conn.commit()

        # Mensagem de sucesso
        flash("Movimentação registrada com sucesso!", "success")

        # Redirecionar para a mesma página para mostrar as movimentações atualizadas
        return redirect(url_for('registrar_movimentacao'))

    # Consultar todas as movimentações
    cursor.execute('''
        SELECT tb_produto.pro_id, tb_produto.pro_nome, 
               tb_movimentacoes.mov_quantidade, 
               tb_movimentacoes.mov_tipo, 
               tb_movimentacoes.mov_data,
               tb_produto.pro_estoque
        FROM tb_produto 
        LEFT JOIN tb_movimentacoes ON tb_movimentacoes.mov_pro_id = tb_produto.pro_id
    ''')
    movimentacoes = cursor.fetchall()
    
    cursor.close()
    conn.close()

    return render_template('gestao_de_movimentacao_de_estoque.html', movimentacoes=movimentacoes)


# Parte de Relatórios:

@app.route('/relatorio', methods=['GET', 'POST'])
def relatorio():
    db = get_db_connection()
    cursor = db.cursor(dictionary=True)

    # Produtos com estoque abaixo de 10 unidades
    cursor.execute('''
        SELECT pro_id, pro_nome, pro_estoque, pro_custo, pro_preco, pro_descricao 
        FROM tb_produto 
        WHERE pro_estoque < 10
    ''')
    low_stock_products = cursor.fetchall()

    if request.method == 'POST':
        # Processar o formulário para o histórico de movimentações e total de entradas/saídas
        start_date = request.form.get('start_date')
        end_date = request.form.get('end_date')

        cursor.execute('''
            SELECT mov_pro_id, SUM(mov_quantidade) AS total_quantidade, mov_tipo
            FROM tb_movimentacoes
            WHERE mov_data BETWEEN %s AND %s
            GROUP BY mov_pro_id, mov_tipo
        ''', (start_date, end_date))

        total_movimentacoes = cursor.fetchall()

        cursor.close()
        db.close()

        return render_template('relatorio.html', low_stock_products=low_stock_products, total_movimentacoes=total_movimentacoes)

    cursor.close()
    db.close()
    return render_template('relatorio.html', low_stock_products=low_stock_products)