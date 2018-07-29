/*
*By: Chronos 2018/07/29
*/
create database floricultura;

use floricultura;

create table produtos(
	idProdutos int primary key not null auto_increment,
    nomeProduto varchar(20) not null,
    tipo varchar(10) not null,
    preco double not null,
    quantidadeEstoque int not null
);

create table cliente(
	idCliente int primary key not null auto_increment,
    nomeCliente varchar(30) not null,
    rg varchar(15) not null,
    telefone varchar(12) not null,
    endereco varchar(40) not null
);

create table venda(
	idVenda int primary key not null auto_increment,
    dataCompra datetime not null,
    valorTotal double not null,
    qtdDeProdutosComprados int not null,
    idProdutos int,
    idCliente int,
    foreign key (idProdutos) references produtos (idProdutos),
    foreign key (idCliente) references cliente (idCliente)
);