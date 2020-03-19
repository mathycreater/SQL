create database Hospital
use Hospital
create table Pacientes(
	Codigo int not null primary key identity (1,1),
	Nome varchar(100) not null,
	Sexo char(1) not null,
	CPF varchar(11) not null,
	Email varchar(100)

)
create table Consultas(

	Codigo int not null PRIMARY KEY identity (1,1),
	CodigoPaciente int not null,
	CodigoMedico int not null, 
	DataConsulta smalldatetime not null
	)

create table Medicos(
	Codigo int not null PRIMARY KEY identity (1,1),
	Nome varchar(100) NOT NULL,
	CRM varchar(20) NOT NULL
	)
	select * from medicos
	INsert into Medicos values('Anderson','3154213494') 
	INsert into Medicos values('Larissoca','9185462862')
	INsert into Medicos values('Matheus','2988296706')
	INsert into Medicos values('ZezinhodoSus','8528187861')
	INsert into Medicos values('Celso','814758631')

	select * from pacientes
	INsert into pacientes values('Melisso','M', '93200136081', 'Melissinhosocasoca@gmail.com')
	INsert into pacientes values('LuquitadaGalera','M', '93616789901', 'Luquinhasdanight@gmail.com')




