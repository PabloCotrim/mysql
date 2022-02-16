create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_pizza(
	id bigint auto_increment,
    nome varchar(75) not null,
    descricao_pizza varchar (255) not null,
    tamanho_pizza char,
    sabor_da_borda varchar(255) not null,
    preco int,
    doce_ou_salgada varchar (35),
    cupom_de_desconto boolean,
    valor_do_desconto int,
    categoria_id bigint,
    primary key(id),
	foreign key(categoria_id) references tb_pizza(id)
);


select * from tb_pizza;
select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id;
select * from tb_pizza where nome like "%c%";
select * from tb_pizza where doce_ou_salgada like "%doce%";

insert into tb_pizza (nome,descricao_pizza,tamanho_pizza,sabor_da_borda,preco,doce_ou_salgada,cupom_de_desconto,valor_do_desconto) 
values("Americana","Presunto e Queijo","G","Catupiry","50","Salgada",true,"10");

insert into tb_pizza (nome,descricao_pizza,tamanho_pizza,sabor_da_borda,preco,doce_ou_salgada,cupom_de_desconto,valor_do_desconto) 
values("Jardineira","Bacon,Queijo,Palmito,Presunto","M","Cheddar","65","Salgada",false,"0");

insert into tb_pizza (nome,descricao_pizza,tamanho_pizza,sabor_da_borda,preco,doce_ou_salgada,cupom_de_desconto,valor_do_desconto)  
values("Baiana","Calabresa picada,ovo,pimenta e cebola","P","Mussarela","40","Salgada",false,"0");

insert into tb_pizza (nome,descricao_pizza,tamanho_pizza,sabor_da_borda,preco,doce_ou_salgada,cupom_de_desconto,valor_do_desconto)  
values("Grega","Queijo e Alho","G","Catupiry","80","Salgada",true,"20");

insert into tb_pizza (nome,descricao_pizza,tamanho_pizza,sabor_da_borda,preco,doce_ou_salgada,cupom_de_desconto,valor_do_desconto)  
values("Marguerita","Queijo e Tomate","G","Cheddar","37","Salgada",false,"0");

insert into tb_pizza (nome,descricao_pizza,tamanho_pizza,sabor_da_borda,preco,doce_ou_salgada,cupom_de_desconto,valor_do_desconto)  
values("Calabresa","Calabresa com cebola","M","Catupiry","30","Salgada",false,"0");

insert into tb_pizza (nome,descricao_pizza,tamanho_pizza,sabor_da_borda,preco,doce_ou_salgada,cupom_de_desconto,valor_do_desconto)  
values("Calabresa","Calabresa com cebola","M","Catupiry","30","Salgada",false,"0");

insert into tb_pizza (nome,descricao_pizza,tamanho_pizza,sabor_da_borda,preco,doce_ou_salgada,cupom_de_desconto,valor_do_desconto)  
values("Prestigio","Coco com Chocolate","G","Nutella","70","Doce",true,"10");

insert into tb_pizza (nome,descricao_pizza,tamanho_pizza,sabor_da_borda,preco,doce_ou_salgada,cupom_de_desconto,valor_do_desconto)  
values("Chocobom","Nutella com Morango","G","Chocolate Branco","60","Doce",false,"0");

insert into tb_pizza (nome,descricao_pizza,tamanho_pizza,sabor_da_borda,preco,doce_ou_salgada,cupom_de_desconto,valor_do_desconto)  
values("Sensacao","Nutella com MM'S","M","Nutella","55","Doce",true,"15");

create table tb_categoria(
	id bigint auto_increment,
	forma_da_entrega varchar(255) not null,
	tempo_de_entrega time,
	veiculo_entrega varchar(35),
    categoria_id bigint,
    primary key(id)
);

insert into tb_categoria (forma_da_entrega,tempo_de_entrega,veiculo_entrega)
values ("Entrega Residencial","45","Motocicleta");

insert into tb_categoria (forma_da_entrega,tempo_de_entrega,veiculo_entrega)
values ("Entrega Residencial","30","Bicicleta");

insert into tb_categoria (forma_da_entrega,tempo_de_entrega,veiculo_entrega)
values ("Presencial","0","Cliente vira buscar");

insert into tb_categoria (forma_da_entrega,tempo_de_entrega,veiculo_entrega)
values ("Entrega Residencial","55","Motocicleta");

insert into tb_categoria (forma_da_entrega,tempo_de_entrega,veiculo_entrega)
values ("Entrega Residencial","25","Carro");

insert into tb_categoria (forma_da_entrega,tempo_de_entrega,veiculo_entrega)
values ("Presencial","0","Cliente vira buscar");

insert into tb_categoria (forma_da_entrega,tempo_de_entrega,veiculo_entrega)
values ("Entrega Residencial","45","Motocicleta");

insert into tb_categoria (forma_da_entrega,tempo_de_entrega,veiculo_entrega)
values ("Entrega Residencial","30","Motocicleta");

insert into tb_categoria (forma_da_entrega,tempo_de_entrega,veiculo_entrega)
values ("Entrega Residencial","40","Carro");

insert into tb_categoria (forma_da_entrega,tempo_de_entrega,veiculo_entrega)
values ("Entrega Residencial","60","Bicicleta");


