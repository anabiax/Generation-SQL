/* comentário de uma linha */

/** 
exemplo comentário de bloco
**/
/* comando de criação do banco de dados*/
CREATE DATABASE db_escola_generation;

/* especificar qual banco irei usar com este comando: */
USE db_escola_generation;

/* comando de criação de tabelas*/ 
/* 1º vem a coluna */
CREATE TABLE tb_alunes(
	id bigint auto_increment primary key, /* chave primária */
	nome varchar(255),
    data_nascimento date,
    turma int,
    nota decimal(4,2)
);

/* inserir dados na tabela (8 registros) */
INSERT INTO tb_alunes(nome,data_nascimento,turma, nota)VALUES("Ana Santos", "2001-03-01", 57, 9.9);
INSERT INTO tb_alunes(nome,data_nascimento,turma, nota)VALUES("Levi Santos", "1970-08-31", 57, 7.0);
INSERT INTO tb_alunes(nome,data_nascimento,turma, nota)VALUES("Rosangela Santos", "1971-09-13", 57, 10.00);
INSERT INTO tb_alunes(nome,data_nascimento,turma, nota)VALUES("Maiara Santos", "2006-09-17", 57, 5.00);

/* "me traga todos os resultados da minha tabela_alunes" */
SELECT * FROM tb_alunes;

/* seleciona todos os dados da tabela de alunes ONDE a nota for maior que 7 */
SELECT * FROM tb_alunes WHERE nota >= 7 LIMIT 100;
SELECT nome FROM tb_alunes WHERE nota < 7 LIMIT 100;

								/* definindo exatamente onde quero mudar*/
UPDATE tb_alunes SET nota = 7 WHERE id=3;
SET SQL_SAFE_UPDATES = 1;