-- criando banco de dados 
create database dblocadora;
--acessando banco de dados
use dblocadora;
-- criando tabelas
create table tbemprestimo(
numFilme int,
numero int,
tipo varchar(50),
cliente int,
dataret date,
datadev date,
valorPg float(5)
);

create table tbmidia(
numFilme int,
numero int,
tipo varchar(50)
);

create table tbfilme(
numFilme int,
titulo_original varchar(50),
titulo_pt varchar(50),
duracao int,
data_lancamento date,
direcao varchar(50),
categoria varchar(50),
classificacao int
);

create table tbator(
cod int,
datanasc date,
nacionalidade varchar(50),
nomeReal varchar(50),
nomeArtistico(50)
);

create table tbcliente(
numCliente int,
nome varchar(50),
endereco varchar(50),
fonEres varchar(50),
fonEcel varchar(50)
);
create table tbclassificacao(
cod int,
nome varchar(50),
preco float(9)
);
create table tbestrela(
numFilme int,
codator int
);


--visualizando tabelas
show tables;

--visualizando os campos das tabelas
desc tbemprestimo;
desc tbmidia;
desc tbfilme;
desc tbator;
desc tbcliente;
desc tbclassificacao;


