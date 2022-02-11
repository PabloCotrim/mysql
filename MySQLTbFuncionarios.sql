create database db_servico_rh;
use db_servico_rh;

create table db_servico_rh(
id_servico bigint auto_increment,
nome varchar(45),
data_de_nascimento date,
salario decimal(10,2),
cargo varchar(30),
ativo boolean,
primary key(id_servico)
);
select * from db_servico_rh;
insert into db_servico_rh(nome,data_de_nascimento,salario,cargo,ativo) values ("Pablo","1999-10-14","2500","aux admin",true);
insert into db_servico_rh(nome,data_de_nascimento,salario,cargo,ativo) values ("Romildo","1994-02-25","2500","faxineiro",true);
insert into db_servico_rh(nome,data_de_nascimento,salario,cargo,ativo) values ("Clovis","1983-09-08","8000","Diretor Fin",true);
insert into db_servico_rh(nome,data_de_nascimento,salario,cargo,ativo) values ("Roberia","1977-12-05","4200","Gerente de Proj",true);
insert into db_servico_rh(nome,data_de_nascimento,salario,cargo,ativo) values ("Kelvin","2002-01-31","1200","Aumoxerifado",true);

select * from db_servico_rh where salario >2000;
select * from db_servico_rh where salario <2000;