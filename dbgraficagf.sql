drop databse dbgraficagf;

create database dbgraficagf;

use dbgraficagf;

-- criando tabelas com integridade e consistência

create table tbfuncionarios(
codfunc int not null auto_increment,
nome varchar(100) not null,
cpf char(14) not null unique,
salario decimal(9,2) default 0 check(salario >= 0),
sexo char(1) default 'F' check(sexo in('F','M')),
primary key(codfunc)
);
create table tbfornecedores(
codforn int not null auto_increment,
nome varchar(100) not null,
cnpj varchar(17) not null unique,
primary key(codforn)
);
create table tbclientes(
codcli int not null auto_increment,
nome varchar(100) not null,
cpf varchar(14) not null unique,
primary key(codcli)
);
create table tbusuarios(
codusu int not null auto_increment,
nome varchar(50) not null,
senha varchar(30) not null,
codfunc int not null,
primary key(codUsu),
foreign key(codfunc)references tbfuncionarios(codfunc)
);
create table tbprodutos(
codprod int not null auto_increment,
descricao varchar(100) not null,
valor decimal(9,2) default 0 check (valor >=0),
qtde int default 0 check(qtde >= 0),
dataEnt date,
horaEnt date,
codforn int not null,
primary key(codprod),
foreign key(codforn)references tbfornecedores(codforn)
);
create table tbvendas(
codvenda int not null auto_increment,
dataVenda date,
hotaVenda time,
qtde int default 0 check (qtde >= 0),
codusu int not null,
codprod int not null,
codcli int not null,
primary key(codvenda),
foreign key(codusu)references tbusuarios(codusu),
foreign key(codprod)references tbprodutos(codprod),
foreign key(codcli)references tbclientes(codcli)
);


show tables;

desc tbfuncionarios;
desc tbfornecedores;
desc tbclientes;
desc tbusuarios;
desc tbprodutos;
desc tbvendas;
