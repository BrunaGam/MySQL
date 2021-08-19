-- Atividade 03 Data: 19.08.2021

create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
primary key (id)
);

insert into tb_categoria (categoria) values ("Remedios");
insert into tb_categoria (categoria) values ("Cosmeticos");
insert into tb_categoria (categoria) values ("Higiene Pessoal");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
remedio varchar(255),
cosmetico varchar(255),
higienes varchar(255),
quantidade int,
valor int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (remedio, quantidade, valor, categoria_id) values ("Buscopan", 20, 15.00, 1);
insert into tb_produto (remedio, quantidade, valor, categoria_id) values ("Luftal", 10, 10.00, 1);
insert into tb_produto (cosmetico, quantidade, valor, categoria_id) values ("Esmalte", 05, 3.00, 2);
insert into tb_produto (cosmetico, quantidade, valor, categoria_id) values ("Rimel", 18, 55.00, 2);
insert into tb_produto (higienes, quantidade, valor, categoria_id) values ("Algodao", 50, 5.00, 3);

select * from tb_produto;

select * from tb_produto where valor > 50.00;

select * from tb_produto where valor > 3.00 and valor < 60.00;

select * from tb_produto where remedio or cosmetico like "%b%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id;

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 2;

