CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id bigint auto_increment primary key,
	categoria varchar(255),
	descricao varchar(255)
);

CREATE TABLE tb_produtos(
	id bigint auto_increment primary key,
	preco decimal(5,2),
	produto varchar(255),
	setor varchar(255),
	quantidade int,
	categoria_id bigint, 
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
INSERT INTO tb_categorias(categoria, descricao)VALUES("antialérgicos","--");
INSERT INTO tb_categorias(categoria, descricao)VALUES("suplemento vitamínio","--");
INSERT INTO tb_categorias(categoria, descricao)VALUES("produtos capilares","--");
INSERT INTO tb_categorias(categoria, descricao)VALUES("analgésicos","--");
INSERT INTO tb_categorias(categoria, descricao)VALUES("beleza","--");

SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(preco,produto,setor,quantidade,categoria_id)VALUES(120,"polaramine","remédios",10,1);
INSERT INTO tb_produtos(preco,produto,setor,quantidade,categoria_id)VALUES(60, "lavitan", "saúde e bem estar", 3, 2);
INSERT INTO tb_produtos(preco,produto,setor,quantidade,categoria_id)VALUES(119.94, "pinga", "beleza", 6, 3);
INSERT INTO tb_produtos(preco,produto,setor,quantidade,categoria_id)VALUES(40, "dipirona", "remédios", 10, 4);
INSERT INTO tb_produtos(preco,produto,setor,quantidade,categoria_id)VALUES(40, "paracetamol", "remédios", 10, 4);
INSERT INTO tb_produtos(preco,produto,setor,quantidade,categoria_id)VALUES(20, "shampoo", "beleza", 1, 3);
INSERT INTO tb_produtos(preco,produto,setor,quantidade,categoria_id)VALUES(152, "óleo de argan", "beleza",8, 3);
INSERT INTO tb_produtos(preco,produto,setor,quantidade,categoria_id)VALUES(10, "esmalte", "cuidados", 2, 5);

SELECT * FROM tb_produtos WHERE preco > 50 ORDER BY produto ASC;
SELECT produto, preco FROM tb_produtos WHERE preco >= 5 AND preco <= 60;
SELECT produto FROM tb_produtos WHERE produto LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
/* ON tb_categorias(categoria.id) = tb_produtos.id; */
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT produto,categoria FROM tb_produtos INNER JOIN tb_categorias

