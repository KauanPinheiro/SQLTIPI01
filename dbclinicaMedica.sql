drop database dbclinicaMedica;

create database dbclinicaMedica;

use dbclinicaMedica;

create table tbmedico(
idMedico int,
nomeMedico varchar(45),
telefoneMedico varchar(9)
);

create table tbconsulta(
idConsulta int,
data_consulta datetime,
medico_idMedico int,
paciente_idPaciente int,
receitaMedica_idReceitaMedica int
);

create table tbpaciente(
idPaciente int,
nomePaciente varchar(45),
telefonePaciente varchar(9),
convenio varchar(45)
);

create table tbreceitaMedica(
idReceitaMedica int,
descricao varchar(500)
);

desc tbmedico;
desc tbconsulta;
desc tbpaciente;
desc tbreceitaMedica;

insert into tbmedico(idMedico,nomeMedico,telefoneMedico)
	values(1,'Heloisa','91234-1234');
insert into tbmedico(idMedico,nomeMedico,telefoneMedico)
	values(2,'Luana','99999-9999');
insert into tbmedico(idMedico,nomeMedico,telefoneMedico)
	values(3,'Caren','99999-9999');
insert into tbmedico(idMedico,nomeMedico,telefoneMedico)
	values(4,'Daiane','99999-9999');
insert into tbmedico(idMedico,nomeMedico,telefoneMedico)
	values(5,'Tutu','99999-9999');

--Insirindo valor na tbconsulta

insert into tbconsulta(idConsulta,data_consulta,medico_idMedico,paciente_idPaciente,receitaMedica_idReceitaMedica)
	values(1,'2023/10/31,',1,1,1);
insert into tbconsulta(idConsulta,data_consulta,medico_idMedico,paciente_idPaciente,receitaMedica_idReceitaMedica)
	values(2,'2023/11/01',2,2,2);
insert into tbconsulta(idConsulta,data_consulta,medico_idMedico,paciente_idPaciente,receitaMedica_idReceitaMedica)
	values(3,'2023/11/02',3,3,3);
insert into tbconsulta(idConsulta,data_consulta,medico_idMedico,paciente_idPaciente,receitaMedica_idReceitaMedica)
	values(4,'2023/11/03',4,4,4);
insert into tbconsulta(idConsulta,data_consulta,medico_idMedico,paciente_idPaciente,receitaMedica_idReceitaMedica)
	values(5,'2023/11/04',5,5,5);
 
-- insirindo valor na tbpaciente
insert into tbpaciente(idPaciente,nomePaciente,telefonePaciente,convenio)
	values(1,'laurinha','00000-0000','laboratorio das lagrimas');
insert into tbpaciente(idPaciente,nomePaciente,telefonePaciente,convenio)
	values(2,'flor','00000-0000','world clinical');
insert into tbpaciente(idPaciente,nomePaciente,telefonePaciente,convenio)
	values(3,'sol','00000-0000','fantastic label');
insert into tbpaciente(idPaciente,nomePaciente,telefonePaciente,convenio)
	values(4,'thais','00000-0000','laboratorio dos risos');
insert into tbpaciente(idPaciente,nomePaciente,telefonePaciente,convenio)
	values(5,'lucas','00000-0000','moon clinical');

-- insirindo valor tbreceitaMedica
insert into tbreceitaMedica(idReceitaMedica,descricao)
	values(1,'descTest1');
insert into tbreceitaMedica(idReceitaMedica,descricao)
	values(2,'descTest2');
insert into tbreceitaMedica(idReceitaMedica,descricao)
	values(3,'descTest3');
insert into tbreceitaMedica(idReceitaMedica,descricao)
	values(4,'descTest4');
insert into tbreceitaMedica(idReceitaMedica,descricao)
	values(5,'descTest5');

select * from tbmedico;
select * from tbconsulta;
select * from tbpaciente;
select * from tbreceitaMedica;


