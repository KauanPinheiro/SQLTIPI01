-- apagando o banco
drop database dbflora;

-- criando o banco
create database dbflora;

-- usando o banco
use dbflora;

-- trabalhar com a estrutura das tabelas

-- criando tabelas 
create table tbfuncionarios(
nome varchar(10),
cpf char(2)
);

create table tbpersons(
id int,
lastName varchar(100),
firstName varchar(100),
addrees varchar(100),
city varchar(100)
);


-- visualizando as tabelas 
desc tbfuncionarios;
desc tbpersons;

-- executando alteração na tabela 
alter table tbfuncionarios add email varchar(100);
alter table tbfuncionarios add fone char(10);
alter table tbfuncionarios add dataNasc date;
alter table tbfuncionarios add logradouro varchar(100);
alter table tbfuncionarios add numero char(5);
alter table tbfuncionarios add cep char(9);
alter table tbfuncionarios add bairro varchar(100);
alter table tbfuncionarios add cidade varchar(100);
alter table tbfuncionarios add siglEst char(2);
alter table tbfuncionarios add cnpj int(11);
alter table tbpersons add dateofbirth date;
 
-- alterar colunas da tabela criada
alter table tbfuncionarios modify column nome varchar(100);
alter table tbfuncionarios modify column cpf varchar(14);
alter table tbpersons modify column dateofbirth year; 


-- apagando colunas da tabela criada
alter table tbfuncionarios drop column cnpj;
alter table tbpersons drop column dateofbirth;


desc tbfuncionarios;
desc tbpersons;


-- insirindo valor tabela
insert into tbpersons(id,lastName,firstName,addrees,city)
	values(1,"Hansen","Ola","Timoteivn 10","Sandnes");
insert into tbpersons(id,lastName,firstName,addrees,city)
	values(2,"Svendson","Tove","Borgvn 23","Sandnes");
insert into tbpersons(id,lastName,firstName,addrees,city)
	values(3,"Pettersen","Kari","Storgt","Stavanger");


-- vizualizando os campos
select * from tbpersons;
select * from tbpersons;
