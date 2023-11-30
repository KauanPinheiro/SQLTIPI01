drop database dbmercado;

create database dbmercado;

use dbmercado;

create table tbclientes(
codCliente int not null auto_increment,
nome varchar(50) not null,
telcel varchar(10) not null,
email varchar(50) not null unique,
primary key(codCliente)
);
create table tbvendedores(
codVendedor int not null auto_increment,
nome varchar(50) not null,
primary key(codVendedor)
);
create table tbpagamentos(
codPagamento int not null auto_increment,
formPagamento varchar(50),
primary key(codPagamento)
);
create table tbcategorias(
codCategoria int not null auto_increment,
nome varchar(50) not null,
primary key(codCategoria)
);
create table tbfornecedores(
codFornecedor int not null auto_increment,
cnpj varchar(18) not null unique,
nome varchar(50),
primary key(codFornecedor)
);
create table tbprodutos(
codProduto int not null auto_increment,
nome varchar(50) not null,
preco decimal(9,2) not null,
qtdeEstoque int not null,
codCategoria int not null,
codFornecedor int not null,
primary key(codProduto),
foreign key(codCategoria)references tbcategorias(codCategoria),
foreign key(codFornecedor)references tbfornecedores(codFornecedor)
);
create table tbvendas(
codVenda int not null auto_increment,
subtotal decimal(9,2) not null,
data datetime not null,
codCliente int not null,
codVendedor int not null,
codPagamento int not null,
primary key(codvenda),
foreign key(codCliente)references tbclientes(codCliente),
foreign key(codVendedor)references tbvendedores(codVendedor),
foreign key(codPagamento)references tbpagamentos(codPagamento)
);
create table tbvendprodutos(
codVenda int not null,
codProduto int not null,
foreign key(codvenda)references tbvendas(codVenda),
foreign key(codProduto)references tbprodutos(codProduto)
);


show tables;


insert into tbClientes(nome,telcel,email)
	values('Luana Santo Rodrigues','94356-7698','luana.santos@hotmail.com');

insert into tbvendedores(nome)
	values('Vitoria Augusto');

insert into tbpagamentos(formPagamento)
	values('Crédito');

insert into tbcategorias(nome)
	values('Inflamavel');

insert into tbfornecedores(cnpj,nome)
	values('67.945.808/0001-12','Rosana Lima');

insert into tbProdutos(nome,preco,qtdeEstoque,codCategoria,codFornecedor)
	values('Esponja',5.02,3,1,1);

insert into tbvendas(subtotal,data,codCliente,codVendedor,codPagamento)
	values(10.50,'2023/11/30',1,1,1);	

insert into tbvendprodutos(codVenda,codProduto)
	values(1,1);

select * from tbClientes;
select * from tbvendedores;
select * from tbpagamentos;
select * from tbcategorias;
select * from tbfornecedores;
select * from tbProdutos;
select * from tbVendas;
select * from tbvendprodutos;