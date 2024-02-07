drop database dbuber;

create database dbuber;

use dbuber;

create table tbmotoristas(
idMotorista int not null auto_increment,
nome varchar(45) not null,
fone varchar(10) not null,
primary key(idMotorista)
);

create table tbclientes(
idCliente int not null auto_increment,
nome varchar(45) not null,
fone varchar(11) not null,
endereco varchar(45),
primary key(idCliente)
);

create table tbveiculos(
idVeiculos int not null auto_increment,
placa varchar(7) not null unique,
modelo varchar(45) not null,
cor varchar(20),
ano int not null,
idMotorista int not null,
primary key(idVeiculos),
foreign key(idMotorista) references tbmotoristas(idMotorista)
);

create table tbviagem(
idViagem int not null auto_increment,
dataViagem date not null,
tempo time not null,
valor decimal(9,2) default 0,
origem varchar(100),
destino varchar(100),
idCliente int not null,
idMotorista int not null,
primary key(idViagem),
foreign key(idCliente) references tbclientes(idCliente),
foreign key(idMotorista) references tbmotoristas(idMotorista)
);

desc tbclientes;
desc tbveiculos;
desc tbviagem;