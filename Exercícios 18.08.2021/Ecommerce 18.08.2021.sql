
-- Atividade 02 Dia: 18.08.2021
create database ecommerce;
use ecommerce;

create table produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(8,2),
setor varchar(20),
descricao varchar(80),
primary key (id)
);

insert into produtos(nome, preco, setor, descricao) values ("LG K41", 2000, "Eletroportatil", "Novo");
insert into produtos(nome, preco, setor, descricao) values ("Iphone 6s", 1500, "Eletroportatil", "Usado");
insert into produtos(nome, preco, setor, descricao) values ("Geladeira Brastemp", 3000, "Eletrodomestico", "Novo");
insert into produtos(nome, preco, setor, descricao) values ("Smart TV Samsung", 2500, "Eletrônicos", "Novo");
insert into produtos(nome, preco, setor, descricao) values ("Zenphone", 1000, "Eletroportatil", "Usado");
insert into produtos(nome, preco, setor, descricao) values ("Air Fryer Mondial", 100, "Eletroportatil", "Novo");

select * from produtos where preco < 2000;
select * from produtos where preco > 2000;

update produtos set nome = "Iphone 6" where id = 2;
