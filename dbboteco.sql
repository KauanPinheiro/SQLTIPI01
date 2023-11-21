drop database dbboteco;

create database dbboteco;

use dbboteco;

create table tbFuncionarios(
codFun int,
nome varchar(100),
email varchar(100),
fone char(10),
cpf char(14),
dataNasc date,
logradouro varchar(100),
numero char(5),
cep char(9),
bairro varchar(100),
cidade varchar(100),
siglEst char(2)
);

insert into tbFuncionarios(codFun,Nome,email,fone,cpf,dataNasc,logradouro,numero,cep,bairro,cidade,siglEst)
	values(1,'Luana Santos','luana.santos@hotmailcom','99999-9999','123.456.789-00','1999/12/02','sem rua ','55','05812-260','doidoLand','São paulo','sp');



create table tbUsuarios(
codUsu int,
nome varchar(30),
senha varchar(20)
);

insert into tbUsuarios(codUsu,nome,senha)
	values(1,'Heloisa Bringuel','123456789');

create table tbFornecedores(
codForn int,
nome varchar(100),
email varchar(100),
telcel char(10),
cnpj char(18)
);

insert into tbFornecedores(codForn,nome,email,telcel,cnpj)
	values(1,'Teste fornecedor','teste.fornecedor@hotmail.com','00000-0000','74.255.567/0001-45');

create table tbProdutos(
codProd int,
nome varchar(100),
valor decimal(9,2),
qtade int,
dataEnt date,
horaEnt time
);

insert into tbProdutos(codProd,nome,valor,qtade,dataEnt,horaEnt)
	values(1,'Couve manteiga', 10.50, 5,'2023/10/31','09:32:50');

create table tbClientes(
codCli int,
nome varchar(100),
email varchar(100),
telcel char(10),
cpf char(14)
);

insert into tbClientes(codCli,Nome,email,telcel,cpf)
	values(1,'Humberto Carlos Figueira','humberto.cfigueira@hotmail.com',
        '98547-3652','254.536.582-99');

create table tbVendas(
codVenda int,
codProd int,
codCli int,
codUsu int,
qtade int,
preco decimal(9,2),
dataVenda date,
horaVenda time

);

insert into tbVendas(codVenda,codProd,codCli,codUsu,qtade,preco,dataVenda,horaVenda)
	values(1,1,1,1,5,9.2,'2023/10/31','09h:38:52');


-- visualizando a estrutura das tabelas

desc tbfuncionarios;
desc tbUsuarios;
desc tbFornecedores;
desc tbprodutos;
desc tbClientes;
desc tbVendas;

select * from tbFuncionarios;
select * from tbUsuarios;
select * from tbFornecedores;
select * from tbProdutos;
select * from tbClientes;
select * from tbVendas;





