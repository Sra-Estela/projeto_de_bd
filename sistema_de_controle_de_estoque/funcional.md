# Estrutura do Código:

```
|sistema_de_controle_de_estoque/
│  ├──__pycache__/
│  ├──static/
|  │  ├──cadastro_de_produtos.css
|  │  ├──gestao_de_movimentacao_de_estoque.css
|  │  └──relatorio.css
│  ├──templates/
|  │  ├──cadastro_de_produtos.html
|  │  ├──gestao_de_movimentacao_de_estoque.html
|  │  └──relatorio.html
├──venv/
├──app.py
├──banco.sql
└──requirements.txt
```

### Arquivo `static/cadastro_de_produtos.css`:
```css
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f4f4f9;
    display: flex;
    height: auto;
    margin: 0;
    flex-direction: column;
    align-items: center;
}

form {
    background-color: #fff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    display: flex;
    width: 100%;
    max-width: 600px;
    flex-direction: column;
}

h1 {
    font-size: 2rem;
    text-align: center;
    color: #333;
    margin: 40px 20px;
    font-weight: lighter;
}

label {
    font-size: 16px;
    color: #555;
    margin-bottom: 8px;
    display: block;
}

input[type="text"],
input[type="number"],
input[type="datetime-local"],
select,
textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    transition: all 0.3s ease;
    background-color: #f9f9f9;
}

/* Efeito ao focar no input */
input[type="text"]:focus,
input[type="number"]:focus,
input[type="datetime-local"]:focus,
select:focus,
textarea:focus {
    border-color: #007BFF;
    outline: none;
    background-color: #ffffff;
}

/* Botão */
input[type="submit"] {
    background-color: #007BFF;
    color: #fff;
    border: none;
    padding: 12px 20px;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

/* Placeholder mais visível */
textarea, input {
    font-style: italic;
}

select {
    appearance: none;
    background-color: #f9f9f9;
    padding-right: 35px;
    background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="18" height="18"><path fill="%23555" d="M7 10l5 5 5-5z"/></svg>');
    background-repeat: no-repeat;
    background-position: right 10px center;
    background-size: 18px;
    cursor: pointer;
}

/* Ajuste para telas maiores */
@media (min-width: 600px) {
    form {
        padding: 20px;
    }

    h1 {
        font-size: 2rem;
    }
}

```

---

### Arquivo `static/gestao_de_movimentacao_de_estoque.css`:
```css
body{
    font-family: Arial, Helvetica, sans-serif;
    margin: 20px;
    padding: 0;
}
.container {
    max-width: 800px;
    margin: 0 auto;
    background: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}
h1 {
    text-align: center;}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

li > b {
    font-size: 20px;
}

button {
    font-size: 1em;
    padding: 8px 15px;
    color: #fff;
    background-color: #e74c3c;  /* Cor vermelha para destacar */
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-left: 10px;  /* Espaço entre o nome e o botão */
}

button:hover {
    background-color: #c0392b;  /* Cor mais escura no hover */
}

button:focus {
    outline: none;
}
```

---

### Arquivo `static/relatorio.css`:
```css
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f7f9;
    color: #333;
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
}

/* Títulos */
h1 {
    color: #2c3e50;
    margin-top: 20px;
    text-align: center;
    font-size: 2.5em;
}

h2 {
    color: #34495e;
    margin-bottom: 10px;
    font-size: 1.8em;
}

/* Seções */
section {
    background-color: #ffffff;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    padding: 20px;
    margin: 20px 0;
    width: 80%;
    border-radius: 10px;
    text-align: center;
}

/* Tabelas */
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 15px;
}

thead {
    background-color: #2c3e50;
    color: #fff;
}

th, td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: center;
}


/* Formulários */
form {
    margin-bottom: 20px;
}

label {
    font-size: 1em;
    color: #2c3e50;
}

select {
    font-size: 1em;
    padding: 5px;
    margin: 0 10px;
    border-radius: 5px;
    border: 1px solid #ccc;
}

button {
    font-size: 1em;
    padding: 8px 15px;
    color: #fff;
    background-color: #2c3e50;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #2c3e50;
}

/* Responsividade */
@media (max-width: 768px) {
    section {
        width: 95%;
    }

    table {
        font-size: 0.9em;
    }

    h1 {
        font-size: 2em;
    }

    h2 {
        font-size: 1.5em;
    }
}


```

---

### Arquivo `templates/adicionado.html`:
```html
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro Adicionado</title>
    <link rel="stylesheet" href="../static/gestao_de_movimentacao_de_estoque.css">
</head>
<body>
    <h1>Produto Adicionado com Sucesso!</h1>
    <p>Detalhes do produto:</p>
    <ul>
        <li><b>ID:</b> {{ produto.pro_id }}</li>
        <li><b>Nome:</b> {{ produto.pro_nome }}</li>
        <li><b>Categoria:</b> {{ produto.pro_categoria }}</li>
        <li><b>Custo Inicial:</b> {{ produto.pro_custo }}</li>
        <li><b>Preço:</b> {{ produto.pro_preco }}</li>
        <li><b>N° em Estoque:</b> {{ produto.pro_estoque }}</li>
        <li><b>Descrição:</b> {{ produto.pro_descricao }}</li>
        <li><b>Data de Cadastro:</b> {{ produto.pro_data }}</li>
    </ul>
    <br>

    <!-- Botão Excluir -->
    <form action="{{ url_for('deletar_produto', pro_id=produto.pro_id) }}" method="post">
        <button type="submit" onclick="return confirm('Tem certeza que deseja excluir este produto?')">Excluir</button>
    </form>
    <br>

    <a href="{{ url_for('home') }}">Voltar à Página Inicial</a>
    <a href="{{ url_for('gestao_de_movimentacao')}}">Registrar Movimentação</a>
</body>
</html>

```

---

### Arquivo `templates/cadastro_de_produtos.html`:
```html
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Produtos</title>
    <link rel="stylesheet" href="../static/cadastro_de_produtos.css">
</head>
<body>
    <h1>Cadastre as informações do produto:</h1>
    <form action="{{ url_for('registrar') }}" method="post">
        <label for="nome">Nome:</label>
        <input type="text" name="nome" id="nome" placeholder="Digite o nome do produto" required>
    
        <label for="data">Data de Cadastro:</label>
        <input type="datetime-local" name="datetime" id="datetime" required>
    
        <label for="categoria">Categoria:</label>
        <select name="categoria" id="categoria" required>
            <option value="Eletrodoméstico">Eletrodoméstico</option>
            <option value="Eletrônicos">Eletrônicos</option>
            <option value="Acessórios">Acessórios</option>
            <option value="Móveis">Móveis</option>
            <option value="Vestuário">Vestuário</option>
            <option value="Brinquedos">Brinquedos</option>
            <option value="Artigos Esportivos">Artigos Esportivos</option>
            <option value="Alimentos">Alimentos</option>
            <option value="Cosméticos">Cosméticos</option>
        </select>
    
        <label for="custo">Custo:</label>
        <input type="number" name="custo" id="custo" placeholder="Digite o custo do produto" required>
    
        <label for="preco">Preço:</label>
        <input type="number" name="preco" id="preco" placeholder="Digite o preço do produto" required>
    
        <label for="estoque">Quantidade em estoque:</label>
        <input type="number" name="estoque" id="estoque" placeholder="Quantidade disponível" required>
    
        <label for="descricao">Descrição:</label>
        <textarea name="descricao" id="descricao" cols="50" rows="10" placeholder="Digite uma descrição detalhada" required></textarea>
    
        <input type="submit" value="Cadastrar Produto">
    </form>
</body>
</html>
```

---

### Arquivo `templates/gestao_de_movimentacao_de_estoque.html`:
```html
<!-- templates/gestao_de_movimentacao_de_estoque.html -->
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestão de Movimentação de Estoque</title>
    <link rel="stylesheet" href="../static/gestao_de_movimentacao_de_estoque.css">
</head>
<body>
    <form action="#" method="post">
        <!-- mov_pro_id: -->
        <label for="pro_id">ID do produto:</label><br>
        <input type="number" name="produto_id" id="produto_id"><br><br>
        <!-- mov_tipo: -->
        <label for="mov_tipo">Tipo de movimentação:</label><br>
        <select name="tipo" id="tipo" required>
            <option value="entrada">Entrada</option>
            <option value="saida">Saída</option>
        </select><br><br>
        <!-- mov_data: -->
        <label for="mov_data">Data da movimentação:</label><br>
        <input type="datetime-local" name="date_time" id="date_time"><br><br>
        <!-- mov_quantidade: -->
        <label for="mov_quantidade">Quntidade de Produtos:</label><br>
        <input type="number" name="mov_quant" id="mov_quant">
    </form><br>

    <input type="submit" value="Registrar"><br><br>

    <a href="{{ url_for('home') }}">Voltar à Página Inicial</a>
</body>
</html>

```

---

### Arquivo `templates/relatoria.html`:
```html
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relatórios e Consultas Avançadas</title>
</head>
<body>
    <h1>Carros Registrados</h1>
    <ul>
        {% for produto in produtos %}
        <li>
            ID: {{ produto.pro_id }} - Nome: {{ produto.pro_nome }} - Preço: {{ produto.pro_preco }} - Estoque: {{ produto.pro_estoque }}
        </li>
        {% endfor %}
    </ul>
</body>
</html>
```

### Arquivo `app.py`:
```python
from flask import Flask, make_response, jsonify, request, url_for, render_template, redirect
import mysql.connector

app = Flask(__name__)

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
        data = request.form['datetime']
        categoria = request.form['categoria']  # Pegamos a categoria selecionada
        custo = request.form['custo']
        preco = request.form['preco']
        estoque = request.form['estoque']
        descricao = request.form['descricao']

        db = get_db_connection()
        cursor = db.cursor()

        # 🔹 Pegando o maior ID existente na tabela
        cursor.execute('SELECT MAX(pro_id) FROM tb_produto')
        max_id = cursor.fetchone()[0]  # Retorna o maior ID já existente

        if max_id is None:
            max_id = 0  # Se não houver registros, começa do zero

        novo_id = max_id + 1  # Define o novo ID

        # 🔹 Inserindo o novo produto na tabela tb_produto
        cursor.execute(
            'INSERT INTO tb_produto (pro_id, pro_nome, pro_data, pro_custo, pro_preco, pro_estoque, pro_descricao) '
            'VALUES (%s, %s, %s, %s, %s, %s, %s)',
            (novo_id, nome, data, float(custo), float(preco), int(estoque), descricao)
        )

        # 🔹 Inserindo a categoria na tabela tb_categoria
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
@app.route('/gestao_de_movimentacao_de_estoque', methods=['GET', 'POST'])
def gestao_de_movimentacao():
    if request.method == 'POST':
        produto_id = request.form['produto_id']
        tipo = request.form['tipo']
        data = request.form['date_time']
        quantidade = request.form['mov_quant']
        
        # Conectando ao banco de dados
        conn = get_db_connection()
        cursor = conn.cursor()

        # Inserindo a movimentação no banco de dados
        cursor.execute('''
            INSERT INTO tb_movimentacoes (mov_id, mov_pro_id, mov_quantidade, mov_tipo, mov_data) 
            VALUES (%s, %s, %s, %s, %s)
        ''', (produto_id, produto_id, quantidade, tipo, data))

        # Commitando a transação
        conn.commit()
        cursor.close()
        conn.close()

        return redirect(url_for('gestao_de_movimentacao'))

    # Carregar produtos para o template
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute('SELECT pro_id, pro_nome FROM tb_produto')
    produtos = cursor.fetchall()
    cursor.close()
    conn.close()

    return render_template('gestao_de_movimentacao_de_estoque.html', produtos=produtos)

```

---

### Arquivo `banco.sql`:
```SQL
DROP DATABASE IF EXISTS db_distribuidora;
CREATE DATABASE db_distribuidora;
USE db_distribuidora;

CREATE TABLE tb_produto (
    pro_id INT PRIMARY KEY AUTO_INCREMENT,
    pro_nome VARCHAR(100) NOT NULL,
    pro_custo FLOAT NOT NULL,
    pro_preco FLOAT NOT NULL,
    pro_estoque INT NOT NULL,
    pro_descricao VARCHAR(1000) NOT NULL,
    pro_data DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tb_categoria (
    cat_id INT PRIMARY KEY AUTO_INCREMENT,
    cat_pro_id INT NOT NULL,
    cat_nome VARCHAR(100) NOT NULL,
    FOREIGN KEY (cat_pro_id) REFERENCES tb_produto(pro_id) ON DELETE CASCADE
);

CREATE TABLE tb_movimentacoes (
    mov_id INT PRIMARY KEY AUTO_INCREMENT,
    mov_pro_id INT,
    mov_quantidade INT NOT NULL,
    mov_tipo ENUM('Entrada', 'Saída') NOT NULL,
    mov_data DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (mov_pro_id) REFERENCES tb_produto(pro_id) ON DELETE CASCADE
);

INSERT INTO tb_produto (pro_id, pro_nome, pro_custo, pro_preco, pro_estoque, pro_descricao) VALUES 
(1, 'Notebook Lenovo', 2600.90, 3250.00, 27, 'Produto em ótimo estado!'),
(2, 'Galaxy Samsung S24 FE', 5600.99, 6200.90, 10, 'A câmera é incrível'),
(3, 'Geladeira Brastemp', 2599.99, 3000.00, 54, 'Muito espaço disponível'),
(4, 'TV 50" LG OLED', 5000.00, 7000.00, 30, 'Qualidade de imagem excepcional com tecnologia OLED'),
(5, 'Ar Condicionado Samsung 12.000 BTUs', 1800.00, 2500.00, 45, 'Eficiência energética e resfriamento rápido'),
(6, 'Micro-ondas Panasonic', 500.00, 700.00, 80, 'Funções automáticas e tecnologia inverter para maior eficiência'),
(7, 'Cafeteira Nespresso', 800.00, 1100.00, 150, 'Máxima praticidade com café de qualidade em minutos'),
(8, 'Notebook Dell Inspiron', 2800.00, 3500.00, 40, 'Desempenho potente para o dia a dia e trabalho remoto'),
(9, 'Smartwatch Apple Watch Series 8', 2200.00, 3500.00, 120, 'Monitore sua saúde e atividade com estilo e tecnologia avançada'),
(10, 'Fritadeira Elétrica Mondial', 250.00, 350.00, 75, 'Frite alimentos com pouco ou nenhum óleo e de forma mais saudável'),
(11, 'Secadora de Roupas Electrolux', 1300.00, 1700.00, 30, 'Secagem rápida e eficiente com funções inteligentes'),
(12, 'Console PlayStation 5', 3800.00, 4500.00, 60, 'Experiência de jogos imersiva com gráficos e desempenho incríveis');

INSERT INTO tb_categoria (cat_pro_id, cat_nome) VALUES
(1, 'Eletrônicos'),
(2, 'Eletrônicos'),
(3, 'Eletrodomésticos'),
(4, 'Eletrônicos'),
(5, 'Eletrodomésticos'),
(6, 'Eletrodomésticos'),
(7, 'Eletrodomésticos'),
(8, 'Eletrônicos'),
(9, 'Eletrônicos'),
(10, 'Eletrodomésticos'),
(11, 'Eletrodomésticos'),
(12, 'Eletrônicos');

INSERT INTO tb_movimentacoes (mov_pro_id, mov_quantidade, mov_tipo) VALUES 
(1, 5, 'Entrada'),
(2, 3, 'Entrada'),
(3, 10, 'Entrada'),
(4, 7, 'Saída'),
(5, 4, 'Entrada'),
(6, 8, 'Saída'),
(7, 15, 'Entrada'),
(8, 6, 'Entrada'),
(9, 12, 'Entrada'),
(10, 5, 'Saída'),
(11, 3, 'Entrada'),
(12, 9, 'Entrada');

SELECT * 
FROM tb_produto 
LEFT JOIN tb_categoria ON tb_categoria.cat_pro_id = tb_produto.pro_id 
LEFT JOIN tb_movimentacoes ON tb_movimentacoes.mov_pro_id = tb_produto.pro_id;

DELETE FROM tb_produto WHERE pro_id=13;
```

___