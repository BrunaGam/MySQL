-- Atividade 1 Dia:18.08.2021

create database db_RH;

use db_RH;

create table funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255),
setor varchar(255), 
remuneracao double,
primary key (id)
); 

insert into funcionarios(nome, cargo, setor, remuneracao) values ("Bruno", "Administrador", "Financeiro", 3000);
insert into funcionarios(nome, cargo, setor, remuneracao) values ("Ana", "Vendedora", "Comercial", 3000);
insert into funcionarios(nome, cargo, setor, remuneracao) values ("Pedro", "Consultor", "RH", 3000);
insert into funcionarios(nome, cargo, setor, remuneracao) values ("Bruna", "Analista", "Marketing", 3000);
insert into funcionarios(nome, cargo, setor, remuneracao) values ("Gael", "Programador", "TI", 3000);

select * from funcionarios where salario >2000;
select * from funcionarios where salario <2000;

update funcionarios set remuneracao = "1000" where id = 2;
update funcionarios set remuneracao = "5000" where id = 5;