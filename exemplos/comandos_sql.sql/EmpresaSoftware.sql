CREATE DATABASE empresa;
USE empresa;

CREATE TABLE projeto (
id int primary key auto_increment,
nome varchar(50),
descricao varchar(200),
prazo_conclusao date
);

CREATE TABLE funcionario (
id int primary key auto_increment,
nome varchar(100),
cargo varchar(100),
salario decimal(10,2),
projeto_id int,
foreign key (projeto_id) references projeto(id)
);
