from flask import Flask, make_response, jsonify, request, url_for, render_template
import mysql.connector

app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = '' #admin
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
        custo = request.form['custo']
        preco = request.form['preco']
        estoque = request.form['estoque']
        descricao = request.form['descricao']

    db = get_db_connection()
    cursor = db.cursor()
    cursor.execute('INSERT INTO tb_produto (nome, custo, preco, estoque, descricao) VALUES (%s, %s, %s, %s, %s)', (nome, float(custo), float(preco), int(estoque), descricao))
    db.commit()

    novo_id = cursor.lastrowid
    cursor.close()
    db.close()

    novo_produto = {
        'id': novo_id,
        'nome': nome,
        'custo': float(custo),
        'preco': float(preco),
        'estoque': int(estoque),
        'descricao': descricao
    }

    return render_template('gestao_de_movimentacao_de_estoque.html', produto=novo_produto)