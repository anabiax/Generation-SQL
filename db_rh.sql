CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_func(
	id bigint auto_increment primary key,
    nome varchar(255),
    data_nascimento date,
    cargo varchar(255),
    nivel varchar(255),
    salario decimal(6,2)
);


INSERT INTO tb_func(nome,data_nascimento,cargo,nivel,salario)VALUES("Fulaninha de Tal", "2000-01-05", "frontend", "senior", 9000.00);
INSERT INTO tb_func(nome, data_nascimento,cargo,nivel,salario)VALUES("Ciclana de Tal", "2001-02-02", "back-end","pleno", 5000.50);
INSERT INTO tb_func(nome, data_nascimento,cargo,nivel,salario)VALUES("Beltrana de Tal", "2002-03-03", "Q.A.", "pleno" , 2000.70);
INSERT INTO tb_func(nome, data_nascimento,cargo,nivel,salario)VALUES("Coisinha", "2003-04-04", "full stack","júnior", 1800.30);
INSERT INTO tb_func(nome, data_nascimento,cargo,nivel,salario)VALUES("Docinho", "2004-05-05","front-end", "júnior", 1300.80);

SELECT * FROM tb_func;
SELECT * FROM tb_func WHERE salario > 2000;
SELECT * FROM tb_func WHERE salario < 2000;

UPDATE tb_alunes SET salario = 4000 WHERE id=2;