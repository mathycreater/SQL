
--DQL
create database Binhocorporation

use Binhocorporation
--Funcionario com os seguintes campos Codigo	Nome	Departamento	Sexo																			
-- NomeColuna tipovariavel not null
create table Funcionarios(
	Codigo int not null primary key identity(1,1),
	Nome varchar(100) not null,
	Departamento varchar(100) null,
	Sexo char(1) not null)

drop table Funcionarios
drop table Departamento


--Departamento com codigo e nome
create table Departamento(
	Codigo int not null primary key identity (1,1),
	nome varchar(100) not null)

Alter table Funcionarios drop column Departamento
Alter table Funcionarios add CodigoDepartamento int null


--DML
--- Codigo 1 - Nome TI
--insert into Departamento(Coluna1, Coluna2) values(valor1, valor2)
--insert into Departamento values(valor1, valor2)

insert into Departamento( nome) values('Cozinha')
select Codigo, nome from Departamento

--Funcionarios:  Joao, M, TI | Jose, M
INsert into Funcionarios values('Joana',5,'M') 
select * from Funcionarios
INsert into Funcionarios(Codigo, Nome, sexo) values (3,'Jose','M') 

Update Funcionarios set CodigoDepartamento = NULL where Codigo = 3 


select * from Funcionarios

select * from Funcionarios where nome like '%a%'
select * from Funcionarios where nome like 'J%'
select * from Funcionarios where Codigo between 3 and 4
select * from Funcionarios where sexo = 'f'
update Funcionarios set Codigo = 5 where nome = 'Maria'

select * from Funcionarios where nome like 'J%'
order by Codigo DESC
select * from Departamento where Codigo = 5


--Não repetir dados, e autogerar o codigo
-- primary key 
--foregn key



--DQL 