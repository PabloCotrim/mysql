create database db_produtos;
use db_produtos;

create table db_produtos(
	id_produtos bigint auto_increment,
    marca varchar(45),
    cor varchar(35),
    tipo_do_produto varchar(60),
    data_de_fabricacao date,
    valor_do_produto decimal(10,2),
	primary key(id_produtos)
);
select * from db_produtos;

insert into db_produtos(marca,cor,tipo_do_produto,data_de_fabricacao,valor_do_produto) values
("Nike","Rosa","Bone","2022-01-15","550");
insert into db_produtos(marca,cor,tipo_do_produto,data_de_fabricacao,valor_do_produto) values
("Adidas air priesto","Preto","Tenis","2021-10-15","820");
insert into db_produtos(marca,cor,tipo_do_produto,data_de_fabricacao,valor_do_produto) values
("Fila","Branco","Camisa","2021-02-18","80");
insert into db_produtos(marca,cor,tipo_do_produto,data_de_fabricacao,valor_do_produto) values
("Puma","Verde","Calca","2021-12-06","300");
insert into db_produtos(marca,cor,tipo_do_produto,data_de_fabricacao,valor_do_produto) values
("Gucci","Mista","Corta Vento","2022-02-10","5500");
insert into db_produtos(marca,cor,tipo_do_produto,data_de_fabricacao,valor_do_produto) values
("Louis Vitton","Marrom","Moletom","2022-01-01","15000");
insert into db_produtos(marca,cor,tipo_do_produto,data_de_fabricacao,valor_do_produto) values
("Nike","Azul","Regata","2021-11-12","550");
insert into db_produtos(marca,cor,tipo_do_produto,data_de_fabricacao,valor_do_produto) values
("Supreme","Vermelho","Escova de Dente","2021-05-09","30");

select * from db_produtos where valor_do_produto > 500;
select * from db_produtos where valor_do_produto <500;