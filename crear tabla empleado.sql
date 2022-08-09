create table portal.empleado(
	id_empleado int primary key,
	id_tipoEmpleado int,
	nombre nvarchar (50) not null,
	apellido nvarchar (50),
	telefono nvarchar (30),
	edad int,
	email nvarchar(50),
	fechaDeContratacion Datetime,
	constraint fk_empleado_tipoEmpleado_id foreign key (id_tipoEmpleado) references portal.tipoEmpleado(id_tipoEmpleado),
)