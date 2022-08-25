CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint auto_increment primary key,
	descricao varchar(255),
    tamanho varchar(255),
    borda_recheada boolean
);

CREATE TABLE tb_pizzas(
	id bigint auto_increment primary key,
    sabor varchar(255),
    preco decimal(6,2),
    massa varchar(255),
    quantidade int,
    categoria_id bigint,  /* campo da minha chave estrangeira*/  
	FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

/* 10 tipos de id */
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("salgada", "brotinho", true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("salgada", "brotinho", false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("salgada", "média", true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("salgada", "média", false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("salgada", "grande", true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("salgada", "grande", false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("doce", "brotinho", true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("doce", "grande", true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("vegetariana", "brotinho", true); /*1 é verdadeiro*/
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("vegana", "brotinho", false);

SELECT * FROM tb_pizzas;
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("frango com catupiry", 30.00, "tradicional", 5, 1); /*1 cria o relacionamento com os valores da minha tb_categorias na posição 1*/
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("mussarela", 40.59, "tradicional", 5, 2);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("prestígio", 50.99, "tradicional", 2, 8);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("lombo com catupiry", 50.99, "tradicional", 3, 6);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("brócolis com catupiry", 40, "tradicional", 4, 9);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("calabresa", 45.99, "tradicional", 5, 1);

SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY sabor ASC;
/* SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY preco ASC; */

/*tanto um qnt o outro estão certos*/
SELECT * FROM tb_pizzas WHERE preco >= 50 AND preco <= 100; 
SELECT sabor,preco FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
/* FAZER O INNER JOIN - vai rolar o grande encontro*/
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT sabor,descricao FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id WHERE descricao="doce";