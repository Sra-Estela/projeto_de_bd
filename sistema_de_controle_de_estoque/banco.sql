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