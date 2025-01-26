CREATE DATABASE db_distribuidora;
DROP DATABASE db_distribuidora;

USE db_distribuidora;

CREATE TABLE tb_produto (
    pro_id int primary key not null auto_increment,
    pro_nome varchar(100) not null,
    pro_custo float not null,
    pro_preco float not null,
    pro_estoque int not null,
    pro_descricao varchar(1000) not null
);

CREATE TABLE tb_categoria (
	cat_id int primary key not null  auto_increment,
    cat_pro_id int,
    cat_nome varchar(100),
    FOREIGN KEY (cat_pro_id) REFERENCES tb_produto(pro_id)
);

CREATE TABLE tb_movimentacoes (
	mov_id int primary key not null auto_increment,
    mov_pro_id int,
    mov_quantidade int,
    mov_tipo ENUM('Entrada', 'Saída'),
    mov_data datetime,
    FOREIGN KEY (mov_pro_id) REFERENCES tb_produto(pro_id)
);

-- (13, 'Cadeira de Escritório DXRacer', 1200.00, 1800.00, 25, 'Conforto extremo para longas horas de trabalho ou jogos'),
-- (14, 'Projetor Epson Full HD', 2200.00, 3200.00, 18, 'Imagens de alta qualidade para apresentações e cinema em casa'),
-- (15, 'Fones de Ouvido Bose QuietComfort 35', 1200.00, 1600.00, 50, 'Fones com cancelamento de ruído, ideais para viagens e longas sessões de trabalho'),
-- (16, 'Câmera Canon EOS 5D Mark IV', 12000.00, 14500.00, 15, 'Câmera profissional com excelente qualidade de imagem para fotógrafos e cineastas'),
-- (17, 'Impressora HP DeskJet 2775', 250.00, 350.00, 100, 'Impressora multifuncional ideal para uso doméstico e escritório pequeno'),
-- (18, 'Microfone Condensador Blue Yeti', 900.00, 1200.00, 30, 'Microfone de alta qualidade para gravação de áudio e streaming'),

INSERT INTO tb_produto VALUES 
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

SELECT * FROM tb_produto;

DELETE FROM tb_produto WHERE pro_id<100;