

create database dbconfeiatria;

user dbconfeiatria;

create table tbfuncionarios (
codFunc int not null auto_increment,
nome varchar(100) not null,
email varchar(100) not null,
telCel char(11),
cpf char(14) not null unique,
salario decimal(9,2) default 0 check( >=0 ),
sexo char(1) default 'F' check(sexo in('F','M')),
primary key(codFunc)

);

create table tbusuarios(
codUsu int not null auto_increment,
nome varchar(52) not null,
senha varchar(31) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc) references tbfuncionarios(codFunc)

);
