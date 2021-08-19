-- Atividade 06 Data: 19.08.2021

create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
primary key (id)
);

insert into tb_categoria (categoria) values ("Curso");

select * from tb_categoria;

create table tb_curso(
id bigint auto_increment,
curso varchar(255),
valor decimal(8,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_curso (curso, valor, categoria_id) values ("Java", 100.00, 1);
insert into tb_curso (curso, valor, categoria_id) values ("Phyton", 50.00, 1);
insert into tb_curso (curso, valor, categoria_id) values ("JavaScript", 30.00, 1);
insert into tb_curso (curso, valor, categoria_id) values ("ActionScript", 200.00, 1);

select * from tb_curso;

select * from tb_curso where valor > 50.00;

select * from tb_curso where valor > 3.00 and valor < 60.00;

select * from tb_curso where curso like "%j%";

select tb_categoria.categoria, tb_curso.curso, tb_curso.valor
from tb_categoria inner join tb_curso on tb_categoria.id = tb_curso.categoria_id;

select * from tb_categoria inner join tb_curso on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 1;