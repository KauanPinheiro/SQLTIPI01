drop database dbbiblioteca;

create database dbbiblioteca;

use dbbiblioteca;

create table tbcategorias(
ID_Categoria smallint(6),
Categoria varchar(30)
);

create table tbeditoras(
ID_Editora smallint(6),
Nome_Editora varchar(50)
);

create table tblivros(
ID_Livros smallint(6),
Nome_livro varchar(70),
ID_Categoria smallint(6),
ID_Autor smallint(6),
Data_Pub date,
Preco_Livro decimal(6,2),
ID_editora smallint(6),
ISBN13 char(13),
ISBN10 char(10)
);

create table tbautores(
ID_Autor smallint(6),
Nome_Autor varchar(30),
Sobrenome_Autor varchar(60)
);


alter table tblivros add Quantidade int;
alter table tbautores add Email_autor varchar(100);
alter table tbeditoras add Email varchar(100);
alter table tbeditoras add Cnpj varchar(18);
alter table tbeditoras add Telefone varchar(9);
alter table tblivros add Data_entrada datetime;

alter table tbcategorias modify column ID_Categoria int;
alter table tbeditoras modify column ID_Editora int;
alter table tblivros modify column ID_Livros int;
alter table tblivros modify column ID_Categoria int;
alter table tblivros modify column ID_Autor int;
alter table tblivros modify column ID_editora int;
alter table tblivros modify column Data_Pub datetime;




desc tbcategorias;
desc tbeditoras;
desc tblivros;
desc tbautores;




insert into tbcategorias(ID_Categoria,Categoria)
	values(1," Literatura fantástica");
insert into tbcategorias(ID_Categoria,Categoria)
	values(2," Literatura fantástica");
insert into tbcategorias(ID_Categoria,Categoria)
	values(3," Literatura fantástica");			
insert into tbcategorias(ID_Categoria,Categoria)
	values(4," Literatura fantástica");
insert into tbcategorias(ID_Categoria,Categoria)
	values(5," Literatura fantástica");

insert into tbeditoras(ID_Editora,Nome_Editora)
	values(1,"Rocco");
insert into tbeditoras(ID_Editora,Nome_Editora)
	values(2,"Rocco");
insert into tbeditoras(ID_Editora,Nome_Editora)
	values(3,"Rocco");
insert into tbeditoras(ID_Editora,Nome_Editora)
	values(4,"Rocco");
insert into tbeditoras(ID_Editora,Nome_Editora)
	values(5,"Rocco");

insert into  tblivros(ID_Livros,Nome_livro,ID_Categoria,ID_Autor,Data_Pub,Preco_Livro,ID_editora,ISBN13,ISBN10)
	values(1,"Harry Potter e a Pedra Filosofal",1,1,"26/07/1997",50.99,1,"test1","test1");
insert into  tblivros(ID_Livros,Nome_livro,ID_Categoria,ID_Autor,Data_Pub,Preco_Livro,ID_editora,ISBN13,ISBN10)
	values(2,"Harry Potter e a Câmara Secreta",2,2,"02/07/1998",50.99,2,"test2","test2");
insert into  tblivros(ID_Livros,Nome_livro,ID_Categoria,ID_Autor,Data_Pub,Preco_Livro,ID_editora,ISBN13,ISBN10)
	values(3,"Harry Potter e o Prisioneiro de Azkaban",3,3,"08/07/1999",50.99,3,"test3","test3");
insert into  tblivros(ID_Livros,Nome_livro,ID_Categoria,ID_Autor,Data_Pub,Preco_Livro,ID_editora,ISBN13,ISBN10)
	values(4,"Harry Potter e o Cálice de Fogo",4,4,"08/07/2000",50.99,4,"test4","test4");
insert into  tblivros(ID_Livros,Nome_livro,ID_Categoria,ID_Autor,Data_Pub,Preco_Livro,ID_editora,ISBN13,ISBN10)
	values(5,"Harry Potter e a Ordem da Fênix",5,5,"21/07/2003",50.99,5,"test5","test5");

insert into tbautores(ID_Autor,Nome_Autor,Sobrenome_Autor)
	values(1,"Joanne"," Rowling");
insert into tbautores(ID_Autor,Nome_Autor,Sobrenome_Autor)
	values(2,"Joanne"," Rowling");
insert into tbautores(ID_Autor,Nome_Autor,Sobrenome_Autor)
	values(3,"Joanne"," Rowling");
insert into tbautores(ID_Autor,Nome_Autor,Sobrenome_Autor)
	values(4,"Joanne"," Rowling");
insert into tbautores(ID_Autor,Nome_Autor,Sobrenome_Autor)
	values(5,"Joanne"," Rowling");

select * from tbcategorias;
select * from tbeditoras;	
select * from tblivros;
select * from tbautores;

