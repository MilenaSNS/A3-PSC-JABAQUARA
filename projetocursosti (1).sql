create database sistemacursosti;
use sistemacursosti;



create table usuarios(
id int auto_increment not null,
login varchar(100),
senha varchar(45),
primary key(id)
);


insert into usuarios(login, senha) 
values("admin", "admin");

select * from usuarios;

create table cursos(
id int auto_increment not null,
nome varchar(200),
nivel varchar(100),
primary key(id)
);

insert into cursos(nome, nivel) 
values('Introdução a programação', 'Básico');
insert into cursos(nome, nivel) 
values('Lógica de Programação', 'Básico');
insert into cursos(nome, nivel) 
values('Desenvolvimento Web', 'Intermediário');
insert into cursos(nome, nivel) 
values('Desenvolvimento Mobile', 'Intermediário');

select * from cursos;

create table estudantes(
id int auto_increment not null,
nome varchar(200),
fone varchar(100),
email varchar(200),
n_cad int not null,
cursos_id int,
primary key(id),
FOREIGN KEY (cursos_id) REFERENCES cursos(id)
);

select * from estudantes;