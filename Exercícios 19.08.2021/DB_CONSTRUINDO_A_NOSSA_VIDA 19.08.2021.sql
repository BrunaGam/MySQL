-- Atividade 04 Data: 19.08.2021

create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
primary key (id)
);

insert into tb_categoria (categoria) values ("ferramentas");
insert into tb_categoria (categoria) values ("produtos");


select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
ferramenta varchar(255),
produto varchar(255),
valor decimal(8,2) not null,
quantidade int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (ferramenta, quantidade, valor, categoria_id) values ("Martelo", 15, 35.00, 1);
insert into tb_produto (ferramenta, quantidade, valor, categoria_id) values ("Chave de Fenda", 30, 5.00, 1);
insert into tb_produto (ferramenta, quantidade, valor, categoria_id) values ("Furadeira Eletrica", 10, 450.00, 1);
insert into tb_produto (produto, quantidade, valor, categoria_id) values ("Argamassa", 100, 80.00, 2);
insert into tb_produto (produto, quantidade, valor, categoria_id) values ("Prego", 500, 10.00, 2);

select * from tb_produto;

select * from tb_produto where valor > 50.00;

select * from tb_produto where valor > 3.00 and valor < 60.00;

select * from tb_produto where ferramenta or produto like "%c%";

select tb_categoria.categoria, tb_produto.ferramenta, tb_produto.produto, tb_produto.valor, tb_produto.quantidade 
from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id;

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 1;
