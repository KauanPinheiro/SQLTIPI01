drop database dblaboratorio;

create database dblaboratorio;

use dblaboratorio;

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

-- 1. Aumente em 12% o valor dos produtos cujos nomes iniciem com a letra 'F'
 update PRODUTOS set VALOR = VALOR * 1.12 where NOME like 'F%';

 -- 2. Aumentar em 50 unidades todos os produtos cujo valor seja maior que 400 e inferior a 600
update PRODUTOS set QUANTIDADE = QUANTIDADE + 50 where VALOR between 400 and 600 ;

-- 3. Aplicar um desconto de 50% (0.5) em todos os produtos que as unidades de estoques sejam maiores que 300
update PRODUTOS set VALOR = VALOR * 0.5 where QUANTIDADE > 300;

-- 4. Exiba o produto de CODIGO = 4
select * from PRODUTOS where CODIGO = 4;

-- 5. Exibir todos os produtos que não tenham a letra 'Y'
select * from PRODUTOS where NOME not like '%Y%';


-- 6. Exibir todos os produtos que se iniciem com nome 'MO' e tenham como tipo as letras 'MA'

select * from PRODUTOS where NOME like 'MO%'and tipo like '%MA%';

	