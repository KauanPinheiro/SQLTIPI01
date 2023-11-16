
-- 1. crie uma database chamada ZOOLOGICO.

create database dbzoologico;

-- 2. Na database ZOOLOGICO, crie uma tabela chamada ANIMAIS com os seguintes campos:

use dbzoologico;

create table tbanimais(
CODIGO int,
TIPO char(15),
NOME char(30),
IDADE int,
VALOR decimal(10,2)
);

desc tbanimais;

insert into tbanimais(CODIGO,TIPO,NOME,IDADE,VALOR)
	values(1,'cachorro','Djudi',3,300.00);
insert into tbanimais(CODIGO,TIPO,NOME,IDADE,VALOR)
	values(2,'cachorro','Sula',5,300.00);
insert into tbanimais(CODIGO,TIPO,NOME,IDADE,VALOR)
	values(3,'cachorro','Sarina',7,300.00);
insert into tbanimais(CODIGO,TIPO,NOME,IDADE,VALOR)
	values(4,'gato','Pipa',2,500.00);
insert into tbanimais(CODIGO,TIPO,NOME,IDADE,VALOR)
	values(5,'gato','Sarangue',2,500.00);
insert into tbanimais(CODIGO,TIPO,NOME,IDADE,VALOR)
	values(6,'gato','Clarences',1,500.00);
insert into tbanimais(CODIGO,TIPO,NOME,IDADE,VALOR)
	values(7,'coruja','Agnes',0,700.00);
insert into tbanimais(CODIGO,TIPO,NOME,IDADE,VALOR)
	values(8,'coruja','Arabela',1,700.00);
insert into tbanimais(CODIGO,TIPO,NOME,IDADE,VALOR)
	values(9,'sapo','Quash',1,100.00);
insert into tbanimais(CODIGO,TIPO,NOME,IDADE,VALOR)
	values(10,'peixe','Fish',0,100.00);



-- 3. Escreva um comando que exiba as colunas da tabela ANIMAIS.

select * from tbanimais;

-- 4. Escreva um comando que exiba apenas as colunas TIPO e Nome da tabela ANIMAIS,apresentando todos os registro da tabela.

select TIPO,NOME from tbanimais;

-- 5. Escreva um comando que exiba apenas as colunas TIPO,NOME e IDADE da tabela ANIMAIS,apresentando todos os registros.

select TIPO,NOME,IDADE from tbanimais;

-- 6. Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS apresentando todos os registros.
--Apresentando todos os registros.Apresente a legenda da coluna TIPO com o alias{Tipo de Animal} e a coluna nome com o alias {Nome do Animal}

select TIPO as 'Tipo de Animal',NOME as 'Nome do Animal' from tbanimais;

-- 7. Escreva um comando que exiba apenas as colunas TIPO,NOME e IDADE da tabela ANIMAIS apresentando todos os registros.
--Apresentando todos os registro.Apresente a legenda da coluna TIPO com alias {Tipo de Animal},da coluna nome com o alias `{Nome do Animal} 
--e da coluna IDADE com o alias {Tempo de vida}.

select TIPO as 'Tipo de Animal',NOME as 'Nome do Animal',IDADE as 'Tempo de Vida' from tbanimais;

-- 8. Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma:

select 'Animal Domestico' as 'Procedencia',TIPO,NOME,IDADE as 'Tempo de Vida' from tbanimais;

-- 9. Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma:
select TIPO,NOME,IDADE,VALOR as 'Valor Original',VALOR * 1.10 'Valor de Venda' from tbanimais; 

-- 10.. Escreva um comando que apresente os dados da tabela ANIMAIS como vemos a seguir,apresentando uma vez os dados repetidos.

select distinct TIPO, VALOR as 'Valor Original',VALOR * 1.10 'Valor de Venda' from tbanimais;	

