create database cursos_ti;
use cursos_ti;


create table usuarios(
id int auto_increment not null,
login varchar(100),
senha varchar(100),
primary key(id)
);

insert into usuarios(login, senha)
values('admin', 'admin');

select * from usuarios;
