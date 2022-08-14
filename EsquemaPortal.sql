use Portal_p

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


create table portal.categoria(
	id_categoria int primary key, 
	nombreCategoria nvarchar (50)not null,
	descripcion nvarchar(200),
	cantidad_productos int not null,
	icono nvarchar(50)
)

create table portal.productos(
	id_producto int primary key,
	nombre nvarchar(50) not null,
	[descripcion] nvarchar(200),
	precio int not null,
	id_categoria int,
	imagen nvarchar(50),
	constraint fk_categoria_productos_id foreign key (id_categoria) references portal.categoria(id_categoria)
)
--se edito la estructura de la tabla de tarjetas
create table portal.tarjeta(
	id_tarjeta nvarchar(20) primary key,
	id_usuario int,
	fecha_expiracion nvarchar (20) not null,
	constraint fk_tarjeta_usuario_id foreign key (id_usuario) references portal.usuarios(id_usuario),
)

create table portal.tipoEntrega(
	id_tipoEntrega int,
	id int identity (1,1) primary key,
	descripcion nvarchar (50)
)

alter table portal.tipoEntrega
	drop column id_tipoEntrega;

create table portal.tipoPago(
	id int identity (1,1) primary key,
	descripcion nvarchar (50)
)



create table portal.orden(
	id_orden int identity (1,1) primary key, 
	id_usuario int, 
	id_tipoEntrega int,
	id_tipoPago int,
	constraint fk_usuario_orden_id foreign key (id_usuario) references portal.usuarios(id_usuario),
	constraint fk_tipoEntrega_orden_id foreign key (id_tipoEntrega) references portal.tipoEntrega(id),
	constraint fk_tipoPago_orden_id foreign key (id_tipoPago) references portal.tipoPago(id),
	fecha_orden datetime not null
)

select * from portal.orden

create table portal.ordenDetallada(
	id_ordenDetallada int identity (1,1) primary key,
	id_orden int, 
	id_producto int,
	constraint fk_ordenDetallada_orden_id foreign key (id_orden) references portal.orden(id_orden),
	constraint fk_ordenDetallada_producto_id foreign key (id_producto) references portal.productos(id_producto),
	cantidad int not null
)
--se edito la estructura de la tabla estado
create table portal.estado(
	id_estado int primary key,
	descripcion varchar(100),

)
--se modifica la tabla de recetas
create table portal.receta(
	id_Receta int primary key,
	id_producto int,
	tiempoPreparacion int,
	descripcion nvarchar(200)
)
alter table portal.receta 
add constraint  fk_producto_receta_id foreign key (id_producto) references portal.productos(id_producto)

create table portal.proveedores(
	id_proveedor int primary key,
	
	nombre nvarchar(50) not null,
	apellido nvarchar(50),
	edad int,
	correo nvarchar(50),
	empresa nvarchar(50) not null
	
)

create table portal.ingredientes(
	id_ingredientes int primary key,
	nombre nvarchar(50) not null,
	fechaVencimiento nvarchar(50),
	id_Proveedor int, 
	cantidadDisponible int,
	constraint fk_ingredientes_proveedor_id foreign key (id_proveedor) references portal.proveedores(id_proveedor),
)
--se modificó esta tabla
create table portal.ingredientes_utilizar(
	id_receta int,
	id_ingredientes int,
	cantidad int,
	constraint fk_ingredientesUtilizar_receta_id foreign key (id_receta) references portal.receta(id_receta),
	constraint fk_ingredientesUtilizar_ingredientes_id foreign key (id_ingredientes) references portal.ingredientes(id_ingredientes),
	primary key (id_receta,id_ingredientes)
)

/*create table portal.recetaProducto(
	id_recetaProducto int,
	id_producto int,
	id_receta int,
	cantidad int,
	constraint fk_recetaProducto_receta_id foreign key (id_receta) references portal.receta(id_receta),
	constraint fk_recetaProducto_producto_id foreign key (id_producto) references portal.productos(id_producto)
)*/
create table portal.tipoEmpleado(
	id_tipoEmpleado int primary key,
	descripcion nvarchar(200)
)

create table portal.empleado(
	id_empleado int primary key,
	id_tipoEmpleado int,
	nombre nvarchar (50) not null,
	apellido nvarchar (50),
	telefono nvarchar (30),
	edad int,
	correo nvarchar(50),
	fechaDeContratacion Datetime,
	constraint fk_empleado_tipoEmpleado_id foreign key (id_tipoEmpleado) references portal.tipoEmpleado(id_tipoEmpleado),
)

create table portal.usuarioAdministrador(
	id_administrador int primary key,
	nombre nvarchar (50) not null,
	apellido nvarchar (50),
	telefono nvarchar (30),
	edad int,
	correo nvarchar(50),
)

create table portal.adminIngredientes(
	id int identity (1,1) primary key,
	id_administrador int,
	id_ingredientes int,
	fecha datetime,
	constraint fk_adminIngredientes_admin_id foreign key (id_administrador) references portal.usuarioAdministrador(id_administrador),
	constraint fk_adminIngredientes_ingredientes_id foreign key (id_ingredientes) references portal.ingredientes(id_ingredientes)

)

create table portal.adminProductos(
	id int identity (1,1) primary key,
	id_administrador int,
	id_producto int,
	fecha datetime,
	constraint fk_adminProductos_admin_id foreign key (id_administrador) references portal.usuarioAdministrador(id_administrador),
	constraint fk_adminProductos_productos_id foreign key (id_producto) references portal.productos(id_producto)

)

create table portal.adminCategorias(
	id int identity (1,1) primary key,
	id_administrador int,
	id_categoria int,
	fecha datetime,
	constraint fk_adminCategorias_admin_id foreign key (id_administrador) references portal.usuarioAdministrador(id_administrador),
	constraint fk_adminCategorias_categoria_id foreign key (id_categoria) references portal.categoria(id_categoria)

)
--en este orden deben ser insertadas
select * from portal.usuarios
select * from portal.categoria
select *from portal.productos
select * from portal.tarjeta
select * from portal.tipoPago
select * from portal.tipoEmpleado
select * from portal.empleado
select * from portal.tipoEntrega
select * from portal.orden
select * from portal.ordenDetallada
select *from portal.usuarioAdministrador
select * from portal.receta
select * from portal.proveedores
select * from portal.ingredientes
select * from portal.estado
select * from portal.ingredientes_utilizar
select * from portal.adminCategorias
select * from portal.adminIngredientes
select * from portal.adminProductos