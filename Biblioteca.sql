/*
*By: Chronos 2018/07/27
*/
create database biblioteca;

use biblioteca;

create table autores(
	idAutores int primary key  not null auto_increment,
    nome varchar(30) not null,
    nacionalidade varchar(15) not null
);

create table categoria(
	idCategoria int primary key not null auto_increment,
    descricao varchar(50) not null
);

create table livro(
	idLivro int primary key not null auto_increment,
    isbm int not null,
    titulo varchar(20) not null,
    ano date not null,
    editora varchar(20) not null,
    idAutores int,
    idCategoria int,
    foreign key (idAutores) references autores (idAutores),
    foreign key (idCategoria) references categoria (idCategoria)
);