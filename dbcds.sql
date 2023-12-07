drop database dbcds;

create database dbcds;

use dbcds;

create table tbartistas(
cod_ART int not null auto_increment,
nome_ART varchar(100) not null,
primary key(cod_ART)
);
create table tbgravadoras(
cod_GRAV int not null auto_increment,
nome_GRAV varchar(50) not null unique,
primary key(cod_GRAV)
);
create table tbcategorias(
cod_CAT int not null auto_increment,
nome_Cat varchar(50) not null unique,
primary key(cod_CAT)
);
create table tbestados(
sigla_EST varchar(2) not null,
nome_EST varchar(50) not null unique,
primary key(sigla_EST)
);
create table tbcidades(
cod_CID int not null auto_increment,
nome_CID varchar(50) not null,
sigla_EST varchar(2) not null,
primary key(cod_CID),
foreign key(sigla_EST)references tbestados(sigla_EST)
);
create table tbclientes(
cod_CLI int not null auto_increment,
nome_Cli varchar(50) not null,
end_CLI varchar(100) not null,
renda_CLI decimal(9,2) not null default 0 check(renda_CLI >0),
sexo_CLI char(1) not null default 'f' check(sexo_CLI in('F','M')),
cod_CID int not null,
primary key(cod_CLI),
foreign key(cod_CID)references tbcidades(cod_CID)
);
create table tbconjuge(
cod_CONj int not null auto_increment,
nome_CONJ varchar(50) not null,
renda_CONJ decimal(9,2) not null default 0 check(renda_CONJ >=0),
sexo_CONJ char(1) not null default 'F' check(sexo_CONJ in('F','M')),
cod_CLI int not null,
primary KEY(cod_CONj),
foreign key(cod_CLI)references tbclientes(cod_CID)
);
create table tbfuncionarios(
cod_FUNC int not null auto_increment,
nome_FUNC varchar(50) not null,
end_FUNC varchar(100) not null,
sal_FUNC decimal(9,2) not null default 0 check(sal_FUNC >=0),
primary key(cod_FUNC)
);
create table tbdependentes(
cod_DEP int not null auto_increment,
nome_DEP varchar(100) not null,
sexo_DEP char(1) not null default 0 check(sexo_DEP in('F','M')),
cod_FUNC int not null,
primary key(cod_DEP),
foreign key(cod_FUNC)references tbfuncionarios(cod_FUNC)
);
create table tbtitulos(
cod_TIT int not null auto_increment,
nome_CD varchar(50) not null unique,
val_CD decimal(9,2) not null check(val_CD >0),
qtd_ESTQ int not null check(qtd_ESTQ >=0),
cod_CAT int not null,
cod_GRAV int not null,
primary key(cod_TIT),
foreign key(cod_CAT)references tbcategorias(cod_CAT),
foreign key(cod_GRAV)references tbgravadoras(cod_GRAV)
);
create table tbpedidos(
num_PED int not null auto_increment,
data_PED datetime not null,
val_PED decimal(9,2) not null default 0 check(val_PED >=0)
cod_CLI int not null,
cod_FUNC int not null,
primary key(num_PED),
foreign key(cod_CLI)references tbclientes(cod_CLI),
);

show tables;
