drop database dbprodtos;

create database dbprodtos;

use dbprodtos;

CREATE TABLE PRODUTOS 
( 
CODIGO INT, 
NOME VARCHAR(50), 
TIPO VARCHAR(25), 
QUANTIDADE INT, 
VALOR DECIMAL(10,2) 
);

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,'IMPRESSORA', 'INFORMATICA', 200, 600.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3, 'DVD PLAYER', 'ELETRONICOS', 250, 500.00 ) ;
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,'MONITOR', 'INFORMATICA', 400, 900.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,'TELEVISOR', 'ELETRONICOS', 350, 650.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,'CELULAR', 'TELEFONE', 450, 850.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,'TECLADO', 'INFORMATICA', 300, 450.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,'MOUSE', 'INFORMATICA', 400, 60.00 ); 

desc PRODUTOS;

Update PRODUTOS set valor = valor * 1.15 where TIPO = 'INFORMATICA';

select * from PRODUTOS where TIPO = 'INFORMATICA';

Update PRODUTOS set valor = valor * 1.05 where TIPO = 'ELETRONICOS' and valor < 600;

select * from PRODUTOS where TIPO = 'ELETRONICOS';

UPDATE PRODUTOS set valor = valor * 0.80 where TIPO = 'DIGITAIS' or valor > 1000;

select * from PRODUTOS where tipo = 'DIGITAIS';

select max(valor) from PRODUTOS;

select min(valor) from PRODUTOS;

select sum(valor) from PRODUTOS;

select avg(valor) from PRODUTOS;

select pow(valor,3) from PRODUTOS;

select sqrt(sum(valor)) from PRODUTOS;

select * from PRODUTOS where valor between 300 and 600 order by valor asc;

select * from PRODUTOS where nome like '%M';
select * from PRODUTOS where nome like 'M%';
select * from PRODUTOS where nome like '%M%';

select * from PRODUTOS where nome  not like '%M';
select * from PRODUTOS where nome  not like 'M%';
select * from PRODUTOS where nome not like '%M%';


