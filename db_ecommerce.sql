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

INSERT INTO tb_ecommerce(nome, marca, categoria, quantidade, preco)VALUES("morte súbita", "Lola Cosmetics", "produto capilar", 200, 800.10);
INSERT INTO tb_ecommerce(nome, marca, categoria, quantidade, preco)VALUES("meu cacho, minha vida", "Lola Cosmetics", "produto capilar",300, 500.00);
INSERT INTO tb_ecommerce(nome, marca, categoria, quantidade, preco)VALUES("be(m)dita ghee ", "Lola Cosmetics", "produto capilar", 400,400.00);
INSERT INTO tb_ecommerce(nome, marca, categoria, quantidade, preco)VALUES("pinga", "Lola Cosmetics", "produto capilar", 500, 199.99);
INSERT INTO tb_ecommerce(nome, marca, categoria, quantidade, preco)VALUES("argan oil", "Lola Cosmetics","produto capilar", 300, 300.00);
INSERT INTO tb_ecommerce(nome, marca, categoria, quantidade, preco)VALUES("comigo ninguém pode", "Lola Cosmetics", "produto capilar", 600,700.50);
INSERT INTO tb_ecommerce(nome, marca, categoria, quantidade, preco)VALUES("cereal killer","Lola Cosmetics","produto capilar", 700, 500.99);
INSERT INTO tb_ecommerce(nome, marca, categoria, quantidade, preco)VALUES("chá latte","Lola Cosmetics","produto capilar", 800, 920.60);

SELECT * FROM tb_ecommerce;
SELECT * FROM tb_ecommerce WHERE preco > 500.00;
SELECT * FROM tb_ecommerce WHERE preco < 500.00;

UPDATE tb_ecommerce SET marca="Salon line" WHERE id=6;