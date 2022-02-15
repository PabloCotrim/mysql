create database db_generation_game_online;
use db_generation_game_online;
create table tb_personagem(
id_personagens bigint auto_increment,
nome varchar(255) not null,
habilidade varchar(75) not null,
arma varchar (75)not null,
primary key(id_personagens)
);

insert into tb_personagem (nome,habilidade,arma) values ("Cruziel","Veloz com facas","Facas");
insert into tb_personagem (nome,habilidade,arma) values ("Lire","Atirar flechas","Flechas");
insert into tb_personagem (nome,habilidade,arma) values ("Ryan","Golpes de machado","Machado");
insert into tb_personagem (nome,habilidade,arma) values ("Cryan","Golpes com Espada","Espada");
insert into tb_personagem (nome,habilidade,arma) values ("Cios","Golpes com Marreta","Marreta");

select * from tb_personagem;

create table tb_classes(
	id bigint auto_increment,
    sub_nome varchar (255) not null,
    nivel int,
    ataque int,
    defesa int,
    classe_id bigint,
    primary key(id),
    foreign key(classe_id) references tb_classes(id)
);

insert into tb_classes (sub_nome,nivel,ataque,defesa) values ("Ninja","100","1800","1500");
insert into tb_classes (sub_nome,nivel,ataque,defesa) values ("Arqueira","80","1500","2000");
insert into tb_classes (sub_nome,nivel,ataque,defesa) values ("Guerreiro","95","2200","1600");
insert into tb_classes (sub_nome,nivel,ataque,defesa) values ("Gladiador","88","2100","1200");
insert into tb_classes (sub_nome,nivel,ataque,defesa) values ("Gladiador","99","2500","1699");

select * from tb_classes where ataque > 2000;
select * from tb_classes where sub_nome like '%Guerreiro%';
select * from tb_classes where ataque > 2000 and defesa > 1000;
select * from tb_personagem where nome like '%c%';
select * from tb_personagem inner join tb_classes; 

