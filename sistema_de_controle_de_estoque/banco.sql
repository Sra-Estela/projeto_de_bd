CREATE DATABASE `db_distribuidora`;

USE `db_distribuidora`;

CREATE TABLE `tb_produto` (
    `pro_id` int primary key not null auto_increment,
    `pro_nome` varchar(100) not null,
    `pro_custo` float not null,
    `pro_preco` float not null,
    `pro_estoque` int not null,
    `pro_descricao` varchar(1000) not null
);

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

DELETE FROM tb_produto WHERE pro_id<10;
