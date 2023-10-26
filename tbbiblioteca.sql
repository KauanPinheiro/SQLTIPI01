drop database dbbiblioteca;

create database dbbiblioteca;

use dbbiblioteca;

create table tblivros(
idLivros int,
Titulo varchar(45),
Ano varchar(45),
Autor_idAutor int,
Categoria_idCategoria int
);

create table tbautor(
idAutor int,
Nome varchar(45),
Pais varchar(45)
);

create table tbcategoria(
idCategoria int,
Nome varchar(45),
Descricao varchar(45)
);

desc tblivros;
desc tbautor;
desc tbcategoria;

insert into tblivros(idLivros,Titulo,Ano,Autor_idAutor,Categoria_idCategoria)
	values(1,'Assassin s Creed: Renascença','2009',1,1);
insert into tblivros(idLivros,Titulo,Ano,Autor_idAutor,Categoria_idCategoria)
	values(2,'Assassin s Creed: Irmandade','2010',2,2);
insert into tblivros(idLivros,Titulo,Ano,Autor_idAutor,Categoria_idCategoria)
	values(3,'Assassin s Creed: A Cruzada Secreta','2011',3,3);
insert into tblivros(idLivros,Titulo,Ano,Autor_idAutor,Categoria_idCategoria)
	values(4,'Assassin s Creed Revelações','2012',4,4);
insert into tblivros(idLivros,Titulo,Ano,Autor_idAutor,Categoria_idCategoria)
	values(5,'Assassin s Creed  Renegado','2013',5,5);

select * from tblivros;

insert into tbautor(idAutor,Nome,Pais)
	values(001,'Anton Gill','Reino unido');
insert into tbautor(idAutor,Nome,Pais)
	values(002,'Anton Gill','Reino unido');
insert into tbautor(idAutor,Nome,Pais)
	values(003,'Anton Gill','Reino unido');
insert into tbautor(idAutor,Nome,Pais)
	values(004,'Anton Gill','Reino unido');
insert into tbautor(idAutor,Nome,Pais)
	values(005,'Anton Gill','Reino unido');

select * from tbautor;

insert into tbcategoria(idCategoria,Nome,Descricao)
	values(1000,'Ficção',' Traído pelas famílias que governam as cidades-estado.');
insert into tbcategoria(idCategoria,Nome,Descricao)
	values(2000,'Ficção','Haytham, consumido pela sede de vingança. ');
insert into tbcategoria(idCategoria,Nome,Descricao)
	values(3000,'Ficção',' not find');
insert into tbcategoria(idCategoria,Nome,Descricao)
	values(4000,'Ficção','É a hora de enfrentar .');
insert into tbcategoria(idCategoria,Nome,Descricao)
	values(5000,'Ficção','Para alcançar seus objetivos, precisará colocar em prática suas habilidades.');

select * from tbcategoria;