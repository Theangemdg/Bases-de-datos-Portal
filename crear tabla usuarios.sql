create database Portal
use Portal

create schema portal

create table portal.usuarios(
	id_usuario int primary key,
	nombre nvarchar(50) not null,
	apellido nvarchar(50) not null,
	edad int not null,
	telefono nvarchar(50) not null,
	contraseña nvarchar(50) not null,
	correo nvarchar(50) not null, 
)

