from flask import Flask, make_response, jsonify, request, url_for, render_template
import mysql.connector

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('cadastro_de_produtos.html')

# app.config['MYSQL_HOST'] = 'localhost'
# app.config['MYSQL_USER'] = 'root'
# app.config['MYSQL_PASSWORD'] = 'admin'
# app.config['MYSQL_DB'] = '<NOME_DO_BANCO>'

# def get_db_connection():
#     return mysql.connector.connect(
#         host = app.config['MYSQL_HOST'],
#         user = app.config['MYSQL_USER'],
#         password = app.config['MYSQL_PASSWORD'],
#         database = app.config['MYSQL_DB']
#     )