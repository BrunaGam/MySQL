-- Atividade 04 Data: 19.08.2021

create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
primary key (id)
);

insert into tb_categoria (categoria) values ("frutas");
insert into tb_categoria (categoria) values ("legumes");
insert into tb_categoria (categoria) values ("verduras");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
fruta varchar(255),
legume varchar(255),
verdura varchar(255),
valor decimal(8,2) not null,
quantidade int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (fruta, quantidade, valor, categoria_id) values ("goiaba", 30, 5.00, 1);
insert into tb_produto (fruta, quantidade, valor, categoria_id) values ("tangerina", 10, 6.00, 1);
insert into tb_produto (legume, quantidade, valor, categoria_id) values ("cenoura", 100, 4.00, 2);
insert into tb_produto (legume, quantidade, valor, categoria_id) values ("chuchu", 50, 3.00, 2);
insert into tb_produto (verdura, quantidade, valor, categoria_id) values ("espinafre", 15, 5.00, 3);

select * from tb_produto;

select * from tb_produto where valor > 50.00;

select * from tb_produto where valor > 3.00 and valor < 60.00;

select * from tb_produto where fruta or legume like "%c%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id;

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 2;