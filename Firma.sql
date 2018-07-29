/*
*By: Chronos 2018/07/29
*/
create database firma;

use firma;

create table produtos(
	idProduto int primary key not null auto_increment,
    nomeProduto varchar(20) not null,
    categoria varchar(20) not null,
    preco double not null
);

create table cliente(
	idCliente int primary key not null auto_increment,
    nomeCliente varchar(30) not null,
    statusCliente boolean not null,
    telefone varchar(12) not null,
    endereco varchar(45) not null,
    limiteCredito double not null
);

create table pedidos(
	idPedidos int primary key not null auto_increment,
    numeroPedido int not null,
    dataPedido datetime not null,
    qtdPorProduto int not null,
    idProduto int,
    idCliente int,
    foreign key (idProduto) references produtos (idProduto),
    foreign key (idCliente) references cliente (idCliente)
);
