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
    height: 120vh;
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
    height: 600px;
    max-width: 600px;
    flex-direction: column;
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
    margin: 0px 0 15px 0;
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
    <h1>Produto Adicionado com Sucesso!</h1>
    <p>Detalhes do produto:</p>
    <ul>
        <li><b>ID:</b> {{ produto.pro_id }}</li>
        <li><b>Nome:</b> {{ produto.pro_nome }}</li>
        <li><b>Custo Inicial:</b> {{ produto.pro_custo }}</li>
        <li><b>Preço:</b> {{ produto.pro_preco }}</li>
        <li><b>N° em Estoque:</b> {{ produto.pro_estoque }}</li>
        <li><b>Descrição de Cadastro:</b> {{ produto.pro_descricao }}</li>
    </ul>

    <!-- Botão Excluir -->
    <form action="{{ url_for('deletar_produto', pro_id=produto.pro_id) }}" method="post">
        <button type="submit" onclick="return confirm('Tem certeza que deseja excluir este produto?')">Excluir</button>
    </form>

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

        # 🔹 Inserindo com um ID manual
        cursor.execute(
            'INSERT INTO tb_produto (pro_id, pro_nome, pro_custo, pro_preco, pro_estoque, pro_descricao) '
            'VALUES (%s, %s, %s, %s, %s, %s)',
            (novo_id, nome, float(custo), float(preco), int(estoque), descricao)
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
            'pro_descricao': descricao
        }

        return render_template('gestao_de_movimentacao_de_estoque.html', produto=novo_produto)

@app.route('/deletar/<int:pro_id>', methods=['POST'])
def deletar_produto(pro_id):
    db = get_db_connection()
    cursor = db.cursor()
    
    cursor.execute('DELETE FROM tb_produto WHERE pro_id = %s', (pro_id,))
    db.commit()
    
    cursor.close()
    db.close()

    return redirect(url_for('home'))

```

---

### Arquivo `banco.sql`:
```SQL
CREATE DATABASE `db_distribuidora`;
DROP DATABASE `db_distribuidora`;

USE `db_distribuidora`;

CREATE TABLE `tb_produto` (
    `pro_id` int primary key not null auto_increment,
    `pro_nome` varchar(100) not null,
    `pro_custo` float not null,
    `pro_preco` float not null,
    `pro_estoque` int not null,
    `pro_descricao` varchar(1000) not null
);

-- (13, 'Cadeira de Escritório DXRacer', 1200.00, 1800.00, 25, 'Conforto extremo para longas horas de trabalho ou jogos'),
-- (14, 'Projetor Epson Full HD', 2200.00, 3200.00, 18, 'Imagens de alta qualidade para apresentações e cinema em casa'),
-- (15, 'Fones de Ouvido Bose QuietComfort 35', 1200.00, 1600.00, 50, 'Fones com cancelamento de ruído, ideais para viagens e longas sessões de trabalho'),
-- (16, 'Câmera Canon EOS 5D Mark IV', 12000.00, 14500.00, 15, 'Câmera profissional com excelente qualidade de imagem para fotógrafos e cineastas'),
-- (17, 'Impressora HP DeskJet 2775', 250.00, 350.00, 100, 'Impressora multifuncional ideal para uso doméstico e escritório pequeno'),
-- (18, 'Microfone Condensador Blue Yeti', 900.00, 1200.00, 30, 'Microfone de alta qualidade para gravação de áudio e streaming'),

INSERT INTO `tb_produto` VALUES 
(1, 'Notebook Lenovo', 2600.90, 3250.00, 27, 'Produto em ótimo estado!'),
(2, 'Galaxy Sansung S24 FE', '5600.99', 6200.90, '10', 'A câmera é incrível'),
(3, 'Geladeira Brastemp', '2599.99', '3000.00', '54', 'Muito espaço disponível'),
(4, 'TV 50" LG OLED', 5000.00, 7000.00, 30, 'Qualidade de imagem excepcional com tecnologia OLED'),
(5, 'Ar Condicionado Samsung 12.000 BTUs', 1800.00, 2500.00, 45, 'Eficiência energética e resfriamento rápido'),
(6, 'Micro-ondas Panasonic', 500.00, 700.00, 80, 'Funções automáticas e tecnologia inverter para maior eficiência'),
(7, 'Cafeteira Nespresso', 800.00, 1100.00, 150, 'Máxima praticidade com café de qualidade em minutos'),
(8, 'Notebook Dell Inspiron', 2800.00, 3500.00, 40, 'Desempenho potente para o dia a dia e trabalho remoto'),
(9, 'Smartwatch Apple Watch Series 8', 2200.00, 3500.00, 120, 'Monitore sua saúde e atividade com estilo e tecnologia avançada'),
(10, 'Fritadeira Elétrica Mondial', 250.00, 350.00, 75, 'Frite alimentos com pouco ou nenhum óleo e de forma mais saudável'),
(11, 'Secadora de Roupas Electrolux', 1300.00, 1700.00, 30, 'Secagem rápida e eficiente com funções inteligentes'),
(12, 'Console PlayStation 5', 3800.00, 4500.00, 60, 'Experiência de jogos imersiva com gráficos e desempenho incríveis');

SELECT * FROM `tb_produto`;

DELETE FROM `tb_produto` WHERE `pro_id`=14;

```

___