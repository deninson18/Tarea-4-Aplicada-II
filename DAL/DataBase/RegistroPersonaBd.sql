create database RegistroPersona;

use RegistroPersona

create table Personas(PersonaId int identity primary key,
Nombres varchar(30),Sexo int);

create table PersonasTelefonos(PersonasTelefonos int identity primary key,
PersonaId int Foreign key references Personas(PersonaId),TipoTelefono varchar(20),Telefono varchar(15));

 insert into Personas(Nombres,Sexo)values('Deninson','1');

select * from PersonasTelefonos