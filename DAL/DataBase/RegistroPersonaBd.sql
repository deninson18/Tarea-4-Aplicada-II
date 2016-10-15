create database RegistroPersona;

use RegistroPersona

create table Personas
(PersonaId int primary key identity(1,1),
Nombres varchar(30),
Sexo int);

create table PersonasTelefonos
(PersonasTelefonos int primary key identity (1,1),
PersonaId int Foreign key references Personas(PersonaId),
TipoTelefono varchar(20),Telefono varchar(15));

 insert into Personas(Nombres,Sexo)values('Deninson','1');

 drop table Personas
 drop table PersonasTelefonos

select * from Personas
select * from PersonasTelefonos