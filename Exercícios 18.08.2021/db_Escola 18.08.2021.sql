create db_escola;

use db_escola;

create table alunos(
id bigint auto_increment,
nome varchar(100),
ano int,
turma int,
serie int,
materia varchar(100),
nota decimal(2,1),
notamedia decimal(2,1),
primary key(id)
);

 insert into alunos(nome, ano, turma, serie, materia, nota, notamedia) values ("Ana", 9,100,4, "Biologia", 10.0, "Aprovado");
 insert into alunos(nome, ano, turma, serie, materia, nota, notamedia) values ("Liz", 5,200,3, "Artes", 9.0, "Aprovado");
 insert into alunos(nome, ano, turma, serie, materia, nota, notamedia) values ("Lia", 6,300,2, "Idiomas", 8.0, "Aprovado");
 insert into alunos(nome, ano, turma, serie, materia, nota, notamedia) values ("Otto", 7,400,1, "Artes", 7.0, "Aprovado");
 insert into alunos(nome, ano, turma, serie, materia, nota, notamedia) values ("Luiz", 8,500,5, "Literatura", 6.0, "Reprovado");
 insert into alunos(nome, ano, turma, serie, materia, nota, notamedia) values ("Tom", 2,600,6, "Teatro", 2.0, "Reprovado");
 insert into alunos(nome, ano, turma, serie, materia, nota, notamedia) values ("Maia", 3,700,7, "Musica", 3.0, "Reprovado");
 insert into alunos(nome, ano, turma, serie, materia, nota, notamedia) values ("Tim", 4,800,8, "Etica", 4.0, "Reprovado");
 
 select * from alunos;
 
 select * from alunos where nota > 7.0;
 select * from alunos where nota < 7.0;
 
update alunos set nota = 8.5 where id = 6;

alter table alunos change notamedia media varchar(15);
alter table alunos modify nota decimal(8,1);
