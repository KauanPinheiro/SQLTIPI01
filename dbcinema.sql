drop database dbcinema;

create database dbcinema;

use dbcinema;

create table tbfuncionarios(
codigo int,
nome varchar(100),
email varchar(100),
telcel char(10)
);

insert into tbfuncionarios(codigo,nome,email,telcel)
	values(1,'Luana santos',"luana.santos@hotmail.com","95284-7852");
insert into tbfuncionarios(codigo,nome,email,telcel)
	values(2,'Heloisa Bringuel',"heloisa.bringuel@hotmail.com","95382-7852");
insert into tbfuncionarios(codigo,nome,email,telcel)
	values(3,'Paloma Almeida',"paloma.almeida@hotmail.com","93284-6752");
insert into tbfuncionarios(codigo,nome,email,telcel)
	values(4,'Root milgrau',"Root.milgrau@hotmail.com","95344-7752");
insert into tbfuncionarios(codigo,nome,telcel)
	values(4,'Paulo lopes',"95344-7753");


select * from tbfuncionarios;

-- Alterando registro nas tabelas criadas.

update tbfuncionarios set nome = 'Luana Santos Rodrigues'
	where codigo = 1;

update tbfuncionarios set email = 'paulo.lopes@globo.com'
	where telcel = "95344-7753";

update tbfuncionarios set telcel = '91333-2748'
	where email = 'paulo.lopes@globo.com';

update tbfuncionarios set codigo = 5
	where email = 'paulo.lopes@globo.com';

update tbfuncionarios set nome = 'Paulo lopes vasconcelos'
	where codigo = 5;

select * from tbfuncionarios;

-- apagando registro nas tabelas criadas

delete from tbfuncionarios where codigo = 5;

select * from tbfuncionarios;

-- buscando valores e alterando o cabeçalho das tabelas

select codigo as 'Codigo' , nome as 'Nome' ,email as 'Email', telcel as 'Telefone Celular' 
	from tbfuncionarios;



