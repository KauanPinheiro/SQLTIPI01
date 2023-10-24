create database dbprodutos;

use dbprodutos;

create table tbcategorias(
idCategorias int,
dsCategoria varchar(45)
);

create table tbprodutos(
idProdutos int,
dsProdutos varchar(45),
preco float(5),
qtidade int,
foto longblob,
categorias_idCategorias int
);

create table tbpedidoitens(
idPedidointens int,
qtade int,
preco float(9),
total float(9),
pedidos_idPedidos int,
produtos_idProdutos int
);

create table tbpedidos(
idPedidos int,
data date,
status varchar(45),
sessao varchar(45),
clientes_idClientes int 
);

create table tbclientes(
idClientes int,
nome varchar(100),
email varchar(100),
senha varchar(100),
);

show tables;

desc tbcategorias;
desc tbprodutos;
desc tbpedidoitens;
desc tbpedidos;
desc tbcliente;