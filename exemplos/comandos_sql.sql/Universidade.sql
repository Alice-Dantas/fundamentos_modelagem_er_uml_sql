CREATE DATABASE universidade;
USE universidade;

CREATE TABLE aluno (
id int auto_increment primary key,
nome varchar(100),
data_nasc date
);

CREATE TABLE curso (
id int auto_increment primary key,
nome varchar(50)
);

CREATE TABLE professor (
id int auto_increment primary key,
nome varchar(100),
especializacao varchar(100),
salario decimal(10,2)
);

CREATE TABLE curso_aluno (
aluno_id int auto_increment,
curso_id int auto_increment,
primary key(aluno_id, curso_id),
foreign key (aluno_id) references aluno(id),
foreign key (curso_id) references curso(id)
);

CREATE TABLE curso_professor (
professor_id int auto_increment,
curso_id int auto_increment,
primary key(professor_id, curso_id),
foreign key (professor_id) references professor(id),
foreign key (curso_id) references curso(id)
);
