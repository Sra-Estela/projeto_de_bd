# Estrutura do Código:

```
|sistema_de_controle_de_estoque/
│  ├──__pycache__/
|  │  ├──distribuidora.png
|  │  ├──png-clipart-filling-station-fuel-dispenser-cartoon-comics-logo.png
|  │  └──tabela_do_projeto_bd.png
│  ├──static/
│  │  ├──imgs/
|  │  ├──adicionado.css
|  │  ├──cadastro_de_produtos.css
|  │  ├──gestao_de_movimentacao_de_estoque.css
|  │  ├──home.css
|  │  └──relatorio.css
│  ├──templates/
|  │  ├──adicionado.html
|  │  ├──cadastro_de_produtos.html
|  │  ├──gestao_de_movimentacao_de_estoque.html
|  │  ├──home.html
|  │  └──relatorio.html
├──venv/
├──app.py
├──banco.sql
└──requirements.txt
```

### Arquivo `static/adicionado.css`:
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

table {
    background-color: #ffffff; /* Fundo da tabela */
}

thead {
    background-color: #007BFF; /* Cor de fundo do cabeçalho */
    color: #fff; /* Cor do texto do cabeçalho */
}

th, td {
    border: 1px solid #ddd; /* Borda da célula */
    padding: 5px; /* Espaçamento interno */
    text-align: center; /* Centraliza o texto */
}

ul {
    padding: 25px;
}

form > p {
    font-size: 20px;
    font-weight: bolder;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
}

li > b {
    font-size: 20px;
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}
```

---

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

table {
    background-color: #ffffff; /* Fundo da tabela */
}

thead {
    background-color: #007BFF; /* Cor de fundo do cabeçalho */
    color: #fff; /* Cor do texto do cabeçalho */
}

th, td {
    border: 1px solid #ddd; /* Borda da célula */
    padding: 5px; /* Espaçamento interno */
    text-align: center; /* Centraliza o texto */
}

tbody tr:nth-child(even) {
    background-color: #f2f2f2; /* Cor de fundo para linhas pares */
}

tbody tr:hover {
    background-color: #e0e0e0; /* Cor de fundo ao passar o mouse */
}

.tipo-entrada {
    color: green; /* Cor para entradas */
}

.tipo-saida {
    color: red; /* Cor para saídas */
}
```

---

### Arquivo `static/home.css`:
```css
body {
    width: 100vw;
    height: 100vh; /* Alterado para 100vh */
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin: 0;
    padding: 0;
    color: #343a40;
    line-height: 1.6;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    background-image: url('../imgs/distribuidora.png');
    background-repeat: no-repeat; /* Não repetir a imagem */
    background-size: cover; /* Cobrir toda a área */
    background-position: center; /* Centralizar a imagem */
}

header {
    background-color: #007BFF;
    color: white;
    padding: 30px 0;
    text-align: center;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}

main {
    padding: 20px;
    max-width: 1200px;
    margin: auto;
    text-align: center;
    flex: 1; 
}

a {
    background-color: #007BFF;
    display: inline-block;
    padding: 15px 20px;
    color: #ffffff;
    text-decoration: none;
    border-radius: 5px;
    margin: 10px;
}

a:hover {
    background-color: #0056b3;
    transform: translateY(-2px);
}

footer {
    color:  gray;
    text-align: center;
    padding: 15px 0;
}

h1 {
    margin: 0;
    font-size: 2.5em;
}
```


### Arquivo `static/relatorio.css`:
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
    flex-direction: column;
    align-items: center;
    padding: 20px;
}

h1 {
    color: #333;
    margin-bottom: 20px;
    font-size: 2.5rem;
}

h2 {
    color: #2c3e50;
    margin-top: 20px;
    font-size: 2rem;
}

h3 {
    color: #34495e;
    margin-top: 20px;
}

/* Formulários */
form {
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    margin: 20px 0;
    display: flex;
    flex-direction: column;
    width: 100%;
    max-width: 600px;
}

label {
    font-size: 16px;
    color: #555;
    margin-bottom: 8px;
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

/* Tabelas */
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    background-color: #ffffff;
}

thead {
    background-color: #007BFF;
    color: #fff;
}

th, td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: center;
}

tbody tr:nth-child(even) {
    background-color: #f2f2f2;
}

tbody tr:hover {
    background-color: #e0e0e0;
}

/* Lista */
ul {
    padding: 10px;
    width: 100%;
    max-width: 600px;
    list-style-type: none;
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
    <link rel="stylesheet" href="../static/adicionado.css">
</head>
<body>
    <h1>Produto Adicionado com Sucesso!</h1>
    <!-- Botão Excluir -->
    <form action="{{ url_for('deletar_produto', pro_id=produto.pro_id) }}" method="post">
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
        <input type="submit" onclick="return confirm('Tem certeza que deseja excluir este produto?')" value="Excluir">
    </form>
    <br>

    <a href="{{ url_for('home') }}">Voltar à Página Inicial</a><br><br>
    <a href="{{ url_for('registrar_movimentacao')}}">Registrar Movimentação</a>
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
    </form><br>

    <a href="{{ url_for('home') }}">Voltar à Página Inicial</a><br><br>
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
    <link rel="stylesheet" href="../static/gestao_de_movimentacao_de_estoque.css">
</head>
<body>
    <h1>Registro de Movimentações</h1>
    
    {% with messages = get_flashed_messages(with_categories=true) %}
        {% if messages %}
        <ul>
            {% for category, message in messages %}
            <li class="{{ category }}">{{ message }}</li>
            {% endfor %}
        </ul>
        {% endif %}
    {% endwith %}
    
    <table border="1">
        <thead>
            <tr>
                <th>ID Produto</th>
                <th>Nome</th>
                <th>Quantidade Movimentada</th>
                <th>Tipo de Movimentação</th>
                <th>Data</th>
                <th>Estoque Atual</th>  <!-- Nova coluna -->
            </tr>
        </thead>
        <tbody>
            {% for movimentacao in movimentacoes %}
            <tr>
                <td>{{ movimentacao.pro_id }}</td>
                <td>{{ movimentacao.pro_nome }}</td>
                <td>{{ movimentacao.mov_quantidade if movimentacao.mov_quantidade is not none else 'Nenhuma' }}</td>
                <td class="{% if movimentacao.mov_tipo == 'Entrada' %}tipo-entrada{% else %}tipo-saida{% endif %}">{{ movimentacao.mov_tipo if movimentacao.mov_tipo is not none else 'Nenhuma' }}</td>
                <td>{{ movimentacao.mov_data if movimentacao.mov_data is not none else 'Nenhuma' }}</td>
                <td>{{ movimentacao.pro_estoque }}</td>
            </tr>
            {% endfor %}
        </tbody>
    </table><br><br>
        
    <h3>Forneça os dados do produto que teve movimentação:</h3><br>

    <form action="{{ url_for('registrar_movimentacao') }}" method="post">
        <label for="mov_pro_id">ID do produto:</label>
        <input type="number" name="mov_pro_id" id="mov_pro_id" required><br>
        
        <label for="mov_tipo">Tipo de movimentação:</label>
        <select name="mov_tipo" id="mov_tipo" required>
            <option value="Entrada">Entrada</option>
            <option value="Saída">Saída</option>
        </select><br>
        
        <label for="mov_data">Data da movimentação:</label>
        <input type="datetime-local" name="mov_data" id="mov_data" required><br>
        
        <label for="mov_quantidade">Quantidade de Produtos:</label>
        <input type="number" name="mov_quantidade" id="mov_quantidade" required><br>
        
        <input type="submit" value="Registrar">
    </form><br>

    <a href="{{ url_for('home') }}">Voltar à Página Inicial</a><br><br>
</body>
</html>
```

---

### Arquivo `templates/home.html`:
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Inicial</title>
    <link rel="stylesheet" href="../static/home.css"> 
</head>
<body>
    <header>
        <h1>Sistema de Controle de Estoque</h1>
    </header>
    
    <main>
        <a href="{{ url_for('cadastro')}}">Cadastro de Produtos</a>
        <a href="{{ url_for('registrar_movimentacao')}}">Registrar Movimentação</a>
        <a href="{{ url_for('relatorio') }}">Relatório dos Registros</a>
    </main>
    
    <footer>
        <p>&copy; 2025 Distribuidora.</p>
    </footer>
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
    <link rel="stylesheet" href="../static/relatorio.css">
</head>
<body>
    <h1>Relatórios de Estoque</h1>

    <h2>Produtos com Estoque Baixo</h2>
    <table>
        <thead>
            <tr>
                <th>ID do Produto</th>
                <th>Nome</th>
                <th>Quantidade em Estoque</th>
                <th>Custo</th>
                <th>Preço</th>
                <th>Descrição</th>
            </tr>
        </thead>
        <tbody>
            {% for produto in low_stock_products %}
            <tr>
                <td>{{ produto.pro_id }}</td>
                <td>{{ produto.pro_nome }}</td>
                <td>{{ produto.pro_estoque }}</td>
                <td>{{ produto.pro_custo }}</td>
                <td>{{ produto.pro_preco }}</td>
                <td>{{ produto.pro_descricao }}</td>
            </tr>
            {% endfor %}
        </tbody>
    </table>

    <h2>Histórico de Movimentações por Produto</h2>
    <form method="POST" action="/relatorio">
        <label for="product_id">Selecione um produto:</label>
        <select name="product_id" id="product_id" required>
            {% for produto in low_stock_products %}
            <option value="{{ produto.pro_id }}">{{ produto.pro_nome }}</option>
            {% endfor %}
        </select>
        <input type="submit" value="Ver Movimentações">
    </form>

    <h2>Total de Entradas e Saídas por Período</h2>
    <form method="POST" action="/relatorio">
        <label for="start_date">Data de Início:</label>
        <input type="datetime-local" name="start_date" id="start_date" required>
        
        <label for="end_date">Data de Fim:</label>
        <input type="datetime-local" name="end_date" id="end_date" required>
        
        <input type="submit" value="Calcular Total">
    </form>

    {% if total_movimentacoes %}
    <h3>Relatório de Movimentações</h3>
    <table>
        <thead>
            <tr>
                <th>ID do Produto</th>
                <th>Total Quantidade</th>
                <th>Tipo</th>
            </tr>
        </thead>
        <tbody>
            {% for movimentacao in total_movimentacoes %}
            <tr>
                <td>{{ movimentacao.mov_pro_id }}</td>
                <td>{{ movimentacao.total_quantidade }}</td>
                <td>{{ movimentacao.mov_tipo }}</td>
            </tr>
            {% endfor %}
        </tbody>
    </table>
    {% endif %}
</body>
</html>
```

---

### Arquivo `app.py`:
```python
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
    mov_id INT AUTO_INCREMENT PRIMARY KEY,
    mov_pro_id INT NOT NULL,
    mov_quantidade INT NOT NULL,
    mov_tipo ENUM('Entrada', 'Saída') NOT NULL,
    mov_data DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,  -- Define o valor padrão como a data e hora atuais
    FOREIGN KEY (mov_pro_id) REFERENCES tb_produto(pro_id),
    UNIQUE KEY unique_mov (mov_pro_id, mov_data)  -- Chave única para evitar duplicação
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

SELECT * FROM tb_movimentacoes;

SELECT * FROM tb_produto 
LEFT JOIN tb_categoria ON tb_categoria.cat_pro_id = tb_produto.pro_id 
LEFT JOIN tb_movimentacoes ON tb_movimentacoes.mov_pro_id = tb_produto.pro_id;

DELETE FROM tb_produto WHERE pro_id>12;
```

___