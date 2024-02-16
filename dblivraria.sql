drop database dblivrariaN;


-- Criando banco de dados

create database dblivrariaN;

-- Acessando banco de dados    
use dblivrariaN;

-- Criando as tabelas 

create table tbgenero(
idgenero int not null auto_increment,
descricao varchar(100),
primary key(idgenero));


create table tbautor(
idautor int not null auto_increment,
nome varchar(100),
email varchar(100),
primary key(idautor));


create table tbcliente(
idcliente int not null auto_increment,
nome varchar(100),
telefone varchar(45),
primary key(idcliente));


create table tblivro(
idlivro int not null auto_increment,
titulo varchar(100),
preco decimal(9,2),
estoque int,
idgenero int not null,
primary key(idlivro),
foreign key(idgenero)references tbgenero(idgenero));

create table tbvenda(
idvenda int not null auto_increment,
dataVenda date,
total decimal(9,2),
idcliente int not null,
primary key(idvenda),
foreign key(idcliente)references tbcliente(idcliente));

create table tbescreve(
idlivro int not null,
idautor int not null,
foreign key(idlivro)references tblivro(idlivro),
foreign key(idautor)references tbautor(idautor));

create table tbitens_da_venda(
idvenda int not null,
idlivro int not null,
qtde int,
sbtotal decimal(9,2),
foreign key(idvenda)references tbvenda(idvenda),
foreign key(idlivro)references tblivro(idlivro));

-- inserindo informações nas tabelas

insert into tbautor(nome,email)values('Manson Mark','mm@mm.com');

insert into tbautor(nome,email)values('Rupi Kaur','rk@rk.com');

insert into tbautor(nome,email)values('Jojo Moyes','jm@lm.com');

insert into tbautor(nome,email)values('Yuval Noah Harari','ynh@ynh.com');

insert into tbgenero(descricao)values('Romance');

insert into tbgenero(descricao)values('Ação');

insert into tbgenero(descricao)values('Drama');

insert into tbgenero(descricao)values('Comédia');

insert into tbgenero(descricao)values('Ficção');

insert into tbgenero(descricao)values('Terror');

insert into tbgenero(descricao)values('Aventura');

insert into tbgenero(descricao)values('Biografia');

insert into tblivro(titulo,preco,estoque,idgenero)values('A sutil arte de ligar fds',25.90,5,8);

insert into tblivro(titulo,preco,estoque,idgenero)values('Outros jeitos de usar a boca',25.90,3,1);

insert into tblivro(titulo,preco,estoque,idgenero)values('Ainda sou eu',28.90,7,6);

insert into tblivro(titulo,preco,estoque,idgenero)values('Uma breve história da humanidade',37.90,2,7);

insert into tblivro(titulo,preco,estoque,idgenero)values('O milagre do amanhã',26.90,1,3);

insert into tblivro(titulo,preco,estoque,idgenero)values('Harry Potter e a Pedra Filosofal',31.90,3,5);

insert into tblivro(titulo,preco,estoque,idgenero)values('Os homens que não amavam as mulheres',31.90,3,1);

insert into tblivro(titulo,preco,estoque,idgenero)values('Malévola',23.90,3,6);

insert into tbcliente(nome,telefone)values('Agustino Fernandez','5555-5555');

insert into tbcliente(nome,telefone)values('Arnaldo Cesar Coelho','4444-4444');

insert into tbcliente(nome,telefone)values('Joaquino Maurício Fagundes','33343-1253');

insert into tbcliente(nome,telefone)values('Getúlio Vargas','58585-58585');

insert into tbcliente(nome,telefone)values('Amaurício Jesus Criado','87878-89898');

insert into tbcliente(nome,telefone)values('Antônio Fagundes','3654-8976');

insert into tbcliente(nome,telefone)values('Betánia do Ceará','48759-8523');

insert into tbcliente(nome,telefone)values('Salvador da Bahia de Lá','4569-8793');

insert into tbvenda(dataVenda,total,idcliente)values('2018/04/17',150.00,7);

insert into tbvenda(dataVenda,total,idcliente)values('2018/04/16',235.00,8);

insert into tbvenda(dataVenda,total,idcliente)values('2018/04/15',35.00,6);

insert into tbvenda(dataVenda,total,idcliente)values('2018/04/14',75.00,5);

insert into tbvenda(dataVenda,total,idcliente)values('2018/04/13',175.00,4);

insert into tbvenda(dataVenda,total,idcliente)values('2018/04/09',165.80,3);

insert into tbvenda(dataVenda,total,idcliente)values('2018/04/07',65.35,2);

insert into tbvenda(dataVenda,total,idcliente)values('2018/04/05',165.00,1);

insert into tbitens_da_venda(idvenda,idlivro,qtde,sbtotal)values(8,3,5,150.00);

insert into tbitens_da_venda(idvenda,idlivro,qtde,sbtotal)values(4,2,3,75.00);

insert into tbitens_da_venda(idvenda,idlivro,qtde,sbtotal)values(6,5,1,35.00);

insert into tbitens_da_venda(idvenda,idlivro,qtde,sbtotal)values(2,6,2,165.00);

insert into tbescreve(idlivro,idautor)values(5,3);

insert into tbescreve(idlivro,idautor)values(8,4);

insert into tbescreve(idlivro,idautor)values(2,2);

insert into tbescreve(idlivro,idautor)values(1,3);

insert into tbescreve(idlivro,idautor)values(4,1);


-- join

select cli.nome from tbvenda as vend inner join tbcliente as cli on vend.idcliente = cli.idcliente;

--select cli.nome as 'Nome do Cliente ', vend.idvenda as 'Código da venda' from tbvenda as vend inner join as cli on vend.idcliente = cli.idcliente 
--where vend.idvenda = 4;

select cli.nome as 'Nome do Cliente', vend.idVenda as 'Cóigo da Venda', itVend.idlivro as 'Código do Livro', liv.titulo as 'Nome do Livro'
from tbvenda as vend
inner join tbcliente as cli on vend.idcliente = cli.idcliente
inner join tbitens_da_venda as itVend
on vend.idVenda = itVend.idVenda
inner join tblivro as liv on itVend.idlivro = liv.idlivro;

