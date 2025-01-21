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
    height: 100vh;
    margin: 0;
    flex-direction: column;
    align-items: center;
}

form {
    background-color: #fff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 600px;
}

h1 {
    font-size: 2rem;
    text-align: center;
    color: #333;
    margin: 40px 20px 40px 20px;
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
textarea {
    width: 100%;
    padding: 10px;
    margin: 8px 0 20px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    transition: all 0.3s ease;
}

input[type="text"]:focus,
input[type="number"]:focus,
textarea:focus {
    border-color: #007BFF;
    outline: none;
}

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

textarea::placeholder {
    color: #aaa;
    font-style: italic;
}

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
    background-color: gray;
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
    <!-- nome, descrição, preço de custo, 
    preço de venda e quantidade inicial em estoque. -->
    <h1>Forneça as informações do Produto:</h1>
    <form action="{{ url_for('registrar') }}" method="post">
        <label for="nome">Nome:</label>
        <input type="text" name="nome" id="nome">
        <label for="custo">Custo:</label>
        <input type="number" name="custo" id="custo">
        <label for="preco">Preço:</label>
        <input type="number" name="preco" id="preco">
        <label for="estoque">Quantidade em estoque:</label>
        <input type="number" name="estoque" id="estoque">
        <label for="descricao">Descrição:</label>
        <textarea name="descricao" id="descricao" cols="50" rows="10" placeholder="Digite aqui sua descrição"></textarea>
        <input type="submit" value="Enviar">
    </form>
</body>
</html>
```

---

### Arquivo `templates/gestao_de_movimentacao_de_estoque.html`:
```html
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestão de Movimentação de Estoque</title>
</head>
<body>
    <h1>Produto Adicionado com Sucesso!</h1>
    <p>Detalhes do produto:</p>
    <ul>
        <li>ID: {{ produto.id }}</li>
        <li>Nome: {{ produto.nome }}</li>
        <li>Custo Inicial: {{ produto.custo }}</li>
        <li>Preço: {{ produto.preco }}</li>
        <li>N° em Estoque: {{ produto.estoque }}</li>
        <li>Descrição de Cadastro: {{ produto.descricao }}</li>
    </ul>
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
        {% for carro in carros %}
        <li>
            ID: {{}}
            ID: {{ carro.id }} - Marca: {{ carro.marca }} - Modelo: {{ carro.modelo }} - Ano: {{ carro.ano }}
        </li>
        {% endfor %}
    </ul>
</body>
</html>
```

### Arquivo `app.py`:
```python
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
```

---

### Arquivo `banco.sql`:
```SQL
CREATE DATABASE `db_distribuidora`;

USE `db_distribuidora`;

CREATE TABLE `tb_produto` (
    `id` int primary key not null auto_increment,
    `nome` varchar(100) not null,
    `custo` float not null,
    `preco` float not null,
    `estoque` int not null,
    `descricao` varchar(1000) not null
);

INSERT INTO `tb_produto` VALUES (1, 'Notebook Lenovo', 2600.90, 3250.00, 27, 'Produto em ótimo estado!');

SELECT * FROM `tb_produto`;

DELETE FROM tb_produto WHERE id = X;
```

___