CREATE SCHEMA loja;
USE loja;

CREATE TABLE cliente (
id int auto_increment primary key,
nome varchar(100),
endereco varchar(100),
email varchar (100)
);

CREATE TABLE pedido (
id int auto_increment primary key,
data_pedido date not null,
valor_total decimal (10,2)
);

CREATE TABLE produto (
id int primary key auto_increment,
nome varchar(50) not null,
preco decimal (10,2)
);

CREATE TABLE itempedido (
id int primary key,
preco_unitario decimal(10,2),
quantidade int,
produto_id int,
pedido_id int,
foreign key (produto_id) references produto(id),
foreign key (pedido_id) references pedido(id)
);
