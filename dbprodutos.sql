drop database dbprodutos;

create database dbprodutos;

use dbprodutos;

CREATE TABLE PRODUTOS
(
 CODIGO INT,
 NOME VARCHAR(50),
 TIPO VARCHAR(25),
 QUANTIDADE INT,
 VALOR DECIMAL(10,2)
);

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR )
	 VALUES ( 1,'IMPRESSORA', 'INFORMATICA', 200, 600.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR )
 	VALUES ( 2,'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR )
 	VALUES ( 3, 'DVD PLAYER', 'ELETRONICOS', 250, 500.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR )
	 VALUES ( 4,'MONITOR', 'INFORMATICA', 400, 900.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR )
	 VALUES ( 5,'TELEVISOR', 'ELETRONICOS', 350, 650.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR )
 	VALUES ( 6,'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR )
 	VALUES ( 7,'CELULAR', 'TELEFONE', 450, 850.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR )
 	VALUES ( 8,'TECLADO', 'INFORMATICA', 300, 450.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR )
 	VALUES ( 9,'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR )
 	VALUES ( 10,'MOUSE', 'INFORMATICA', 400, 60.00 );


-- where com select

select * from PRODUTOS where tipo = 'INFORMATICA';

-- where com update(cuidado o comando irá atualizar as registros)

update PRODUTOS set valor = valor * 1.15 where tipo = 'INFORMATICA';		

-- where com o a função and 
update PRODUTOS set valor = valor * 1.05 where tipo = 'ELETRONICOS' and valor < 600;

select * from PRODUTOS where tipo = 'ELETRONICOS' and valor < 600;

-- where com a função or 
update PRODUTOS set valor = valor * 0.80 where tipo = 'DIGITAIS' or valor >1000;

select * from PRODUTOS where tipo = 'DIGITAIS' or valor > 1000;

-- ultilizando a função in (é igual or)
select * from PRODUTOS where tipo in('INFORMATICA','ELETRONICOS');

-- ultilizando o not (negação)
select * from PRODUTOS where tipo not in('INFORMATICA','ELETRONICOS');

-- ultilizando o betweenn (entre)
select * from PRODUTOS where valor between 400 and 700;

-- ultilizando o not between 
select * from PRODUTOS where valor not between 400 and 700;

-- comando like (busca por nome)

-- like '%%'

-- %se - tudo que termina
-- se% - tudo que inicia
-- %se% - tudo que inicia, meio, termina

select nome from PRODUTOS where nome like '%l';

select * from PRODUTOS where nome like '%se';
select * from PRODUTOS where nome like 'se%';
select * from PRODUTOS where nome like '%se%';

-- comando not like 
select * from PRODUTOS where nome not like '%l';

select * from PRODUTOS where nome not like 'l%';

select * from PRODUTOS where nome not like '%l%';