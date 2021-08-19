-- Atividade 01 Data: 19.08.2021

create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
nacionalidade varchar(255),
categoria varchar(255) not null,
primary key (id)
);

insert into tb_classe (nacionalidade, categoria) values ("Brasileira", "Humana");
insert into tb_classe (nacionalidade, categoria) values ("Escocesa", "Arqueira");
insert into tb_classe (nacionalidade, categoria) values ("Britanico", "Mago");
insert into tb_classe (nacionalidade, categoria) values ("Chinesa", "Guerreira");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255),
ataque int,
defesa int,
nivel int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_classe (id)
);

insert into tb_personagem (nome, ataque, defesa, nivel, categoria_id) values ("Magali", 900, 200, 20, 1);
insert into tb_personagem (nome, ataque, defesa, nivel, categoria_id) values ("Merida", 7000, 4000, 60, 2);
insert into tb_personagem (nome, ataque, defesa, nivel, categoria_id) values ("Merlin", 8000, 5000, 70, 3);
insert into tb_personagem (nome, ataque, defesa, nivel, categoria_id) values ("Mulan", 1000, 800, 40, 4);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa > 1000 and defesa < 2000;

select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe on tb_personagem.categoria_id = tb_classe.id;

select * from tb_personagem inner join tb_classe on tb_personagem.categoria_id = tb_classe.id where categoria_id = 2;



