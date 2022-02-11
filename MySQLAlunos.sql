create database db_alunos;
use db_alunos;

create table db_alunos(
id_escola bigint auto_increment,
nome_aluno varchar(75),
data_de_nasc date,
nota_aluno double,
materia_preferida varchar(45),
intervalo time,
primary key(id_escola)
);
select * from db_alunos;
insert into db_alunos(nome_aluno,data_de_nasc,nota_aluno,materia_preferida,intervalo) values ("Pablo Cotrim",
"1999-10-14","10","Matematica","10:15"); 
insert into db_alunos(nome_aluno,data_de_nasc,nota_aluno,materia_preferida,intervalo) values ("Maria Silva",
"1997-09-09","5","Historia","11:15"); 
insert into db_alunos(nome_aluno,data_de_nasc,nota_aluno,materia_preferida,intervalo) values ("Rayssa Goncalves",
"2002-07-25","4","Geografia","10:15"); 
insert into db_alunos(nome_aluno,data_de_nasc,nota_aluno,materia_preferida,intervalo) values ("Marcelo Henrique",
"1998-11-28","7","Filosofia","12:30");
insert into db_alunos(nome_aluno,data_de_nasc,nota_aluno,materia_preferida,intervalo) values ("Juan Souza",
"2001-06-12","5","Ciencias","13:30"); 

select * from db_alunos where nota_aluno >=7;
select * from db_alunos where nota_aluno <7;