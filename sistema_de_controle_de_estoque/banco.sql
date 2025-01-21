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

DELETE FROM tb_produto WHERE id = 3;