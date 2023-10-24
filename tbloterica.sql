-- criando banco de dados 

create database dbLoterica;
-- acessando banco de dados
use dbLoterica;
-- criando as tabelas
create table tbfuncionarios(
codigo int,
nome varchar(100),
email char(100),
telcel char(9),
cpf char(14),
dataEnt date,
salario decimal(9,2)
);

create table tbUsuarios(
codigo int,
nome varchar(50),
senha varchar(30)
);

--visualizando o campo da tabela 
desc tbfuncionarios;
desc tbUsuarios;