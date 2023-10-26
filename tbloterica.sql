-- apagando banco de dado existente
drop database dbLoterica;

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

-- insirindo registro nas tabelas
insert into tbfuncionarios(
codigo,nome,email,telcel,cpf,dataEnt,salario)
values(1,'Armandino da silva','Armandino.silva@hotmail.com','99875-8574','157.857.897-00','2023/10/26',
1500.00);
insert into tbfuncionarios(
codigo,nome,email,telcel,cpf,dataEnt,salario)
values(2,'Joao nascimento','joao.nascimento@hotmail.com','99873-8575','157.857.897-01','2023/09/02',
1600.00);
insert into tbfuncionarios(
codigo,nome,email,telcel,cpf,dataEnt,salario)
values(3,'Roberta melo','roberta.melo@hotmail.com','92373-4575','137.257.897-02','2023/04/12',
1700.00);

-- visualizando os registros/dados insiridos
select * from tbfuncionarios;
