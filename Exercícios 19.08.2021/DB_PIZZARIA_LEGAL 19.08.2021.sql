-- Atividade 02 Data: 19.08.2021

create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar(255),
categoria varchar(255),
primary key (id)
);

insert into tb_categoria (tamanho, categoria) values ("Grande", "Pizza");
insert into tb_categoria (tamanho, categoria) values ("Brotinho", "Pizza Doce");
insert into tb_categoria (tamanho, categoria) values ("Fechada", "Calzone");
insert into tb_categoria (tamanho, categoria) values ("Cone", "Pizza Cone");

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
sabor varchar(255),
valor decimal(8,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (sabor, valor, categoria_id) values ("Calabresa", 30.00, 1);
insert into tb_pizza (sabor, valor, categoria_id) values ("Peruana", 40.00, 1);
insert into tb_pizza (sabor, valor, categoria_id) values ("Prestigio", 29.00, 2);
insert into tb_pizza (sabor, valor, categoria_id) values ("Portuguesa", 50.00, 3);
insert into tb_pizza (sabor, valor, categoria_id) values ("Champignon", 35.00, 4);

select * from tb_pizza;

select * from tb_pizza where valor > 45.00;

select * from tb_pizza where valor > 29.00 and valor < 60.00;

select * from tb_pizza where sabor like "%c%";

select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 2;


