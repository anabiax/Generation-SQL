CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_ecommerce (
	id bigint auto_increment primary key,
    nome varchar(255),
    marca varchar(255),
    categoria varchar(255),
    quantidade int,
    preco decimal(5,2)
);

INSERT INTO tb_ecommerce(nome, marca, categoria, quantidade, preco)VALUES("morte súbita", "Lola Cosmetics", "produto capilar", 200, 80.10);
INSERT INTO tb_ecommerce(nome, marca, categoria, quantidade, preco)VALUES("meu cacho, minha vida", "Lola Cosmetics", "produto capilar",300, 50.00);
INSERT INTO tb_ecommerce(nome, marca, categoria, quantidade, preco)VALUES("be(m)dita ghee ", "Lola Cosmetics", "produto capilar", 400,40.00);
INSERT INTO tb_ecommerce(nome, marca, categoria, quantidade, preco)VALUES("pinga", "Lola Cosmetics", "produto capilar", 500, 19.99);
INSERT INTO tb_ecommerce(nome, marca, categoria, quantidade, preco)VALUES("argan oil", "Lola Cosmetics","produto capilar", 30.00);
INSERT INTO tb_ecommerce(nome, marca, categoria, quantidade, preco)VALUES("comigo ninguém pode", "Lola Cosmetics", "produto capilar", 600,40.50);
INSERT INTO tb_ecommerce(nome, marca, categoria, quantidade, preco)VALUES("cereal killer","Lola Cosmetics","produto capilar", 700, 50.99);
INSERT INTO tb_ecommerce(nome, marca, categoria, quantidade, preco)VALUES("chá latte","Lola Cosmetics","produto capilar", 800, 42.60);

SELECT * FROM tb_ecommerce;
SELECT * FROM tb_ecommerce WHERE valor > 500;
SELECT * FROM tb_ecommerce WHERE valor < 500;

UPDATE tb_ecommerce SET valor=40.00 WHERE id=3;