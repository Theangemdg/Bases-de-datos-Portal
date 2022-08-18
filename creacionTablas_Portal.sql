--create database Portal

--use Portal
--create schema portal


--USUARIOS
create table portal.usuarios(
	id_usuario int primary key,
	nombre nvarchar(50) not null,
	apellido nvarchar(50) not null,
	edad int not null,
	telefono nvarchar(50) not null,
	contraseña nvarchar(50) not null,
	correo nvarchar(50) not null, 
)
--CATEGORIAS

create table portal.categoria(
	id_categoria int primary key, 
	nombreCategoria nvarchar (50)not null,
	descripcion nvarchar(200),
	cantidad_productos int not null,
	icono nvarchar(50)
)

--PRODCUTOS
create table portal.productos(
	id_producto int primary key,
	nombre nvarchar(50) not null,
	[descripcion] nvarchar(200),
	precio int not null,
	id_categoria int,
	imagen nvarchar(50),
	constraint fk_categoria_productos_id foreign key (id_categoria) references portal.categoria(id_categoria)
)

--TARJETA
create table portal.tarjeta(
	id_tarjeta nvarchar(20) primary key,
	id_usuario int,
	fecha_expiracion nvarchar (20) not null,
	CVV nvarchar(5),
	constraint fk_tarjeta_usuario_id foreign key (id_usuario) references portal.usuarios(id_usuario),
)

--TIPOENTREGA
create table portal.tipoEntrega(
	id_tipoEntrega int identity(1,1) primary key,
	descripcion nvarchar (50)
)

--TIPOPAGO
create table portal.tipoPago(
	id int identity (1,1) primary key,
	descripcion nvarchar (50)
)

--TIPOEMPLEADO
create table portal.tipoEmpleado(
	id_tipoEmpleado int primary key,
	descripcion nvarchar(200)
)

--EMPLEADO
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

--ESTADO
create table portal.estado(
	id_estado int primary key,
	descripcion varchar(100),

)

--ORDEN
create table portal.orden(
	id_orden int identity (1,1) primary key, 
	id_usuario int, 
	id_empleado int,
	id_tipoEntrega int,
	id_tipoPago int,
	id_estado int,
	constraint fk_usuario_orden_id foreign key (id_usuario) references portal.usuarios(id_usuario),
	constraint fk_tipoEntrega_orden_id foreign key (id_tipoEntrega) references portal.tipoEntrega(id_tipoEntrega),
	constraint fk_tipoPago_orden_id foreign key (id_tipoPago) references portal.tipoPago(id),
	constraint fk_empleado_orden_id foreign key (id_empleado) references portal.empleado (id_empleado),
	constraint fk_estado_orden_id foreign key (id_estado) references portal.estado(id_estado),
	fecha_orden datetime not null
)

--ORDEN-DETALLADA
create table portal.ordenDetallada(
	id_ordenDetallada int identity (1,1) primary key,
	id_orden int, 
	id_producto int,
	constraint fk_ordenDetallada_orden_id foreign key (id_orden) references portal.orden(id_orden),
	constraint fk_ordenDetallada_producto_id foreign key (id_producto) references portal.productos(id_producto),
	cantidad int not null
)

--RECETAS
create table portal.receta(
	id_Receta int primary key,
	id_producto int,
	tiempoPreparacion int,
	servir int,--ESTO ES PARA SABER PARA CUANTAS PERSONAS SE PUEDE SERVIR EL EL PRODUCTO
	descripcion nvarchar(200),
	constraint  fk_producto_receta_id foreign key (id_producto) references portal.productos(id_producto)
)

--alter table portal.productos
--add estado int
--update portal.productos set estado = 1

--PROVEEDORES
create table portal.proveedores(
	id_proveedor int primary key,
	nombre nvarchar(50) not null,
	apellido nvarchar(50),
	edad int,
	correo nvarchar(50),
	empresa nvarchar(50) not null
	
)

--INGREDIENTES
create table portal.ingredientes(
	id_ingredientes int identity(1,1) primary key,
	nombre nvarchar(50) not null,
	fechaVencimiento nvarchar(50),
	id_Proveedor int, 
	cantidadDisponible int,
	constraint fk_ingredientes_proveedor_id foreign key (id_proveedor) references portal.proveedores(id_proveedor),
)


--INGREDIENTES A UTILIZAR
create table portal.ingredientes_utilizar(
	id_receta int,
	id_ingredientes int,
	cantidad int,
	constraint fk_ingredientesUtilizar_receta_id foreign key (id_receta) references portal.receta(id_receta),
	constraint fk_ingredientesUtilizar_ingredientes_id foreign key (id_ingredientes) references portal.ingredientes(id_ingredientes),
	primary key (id_receta,id_ingredientes)
)


--ADMINISTRADORES
create table portal.usuarioAdministrador(
	id_administrador int primary key,
	nombre nvarchar (50) not null,
	apellido nvarchar (50),
	telefono nvarchar (30),
	edad int,
	correo nvarchar(50),
	contraseña nvarchar (50)
)

--ADMIN - INGREDIENTES
create table portal.adminIngredientes(
	id int identity (1,1) primary key,
	id_administrador int,
	id_ingredientes int,
	fecha datetime,
	constraint fk_adminIngredientes_admin_id foreign key (id_administrador) references portal.usuarioAdministrador(id_administrador),
	constraint fk_adminIngredientes_ingredientes_id foreign key (id_ingredientes) references portal.ingredientes(id_ingredientes)

)

--ADMIN - PRODUCTOS
create table portal.adminProductos(
	id int identity (1,1) primary key,
	id_administrador int,
	id_producto int,
	fecha datetime,
	constraint fk_adminProductos_admin_id foreign key (id_administrador) references portal.usuarioAdministrador(id_administrador),
	constraint fk_adminProductos_productos_id foreign key (id_producto) references portal.productos(id_producto)

)

--ADMIN - CATEGORIAS
create table portal.adminCategorias(
	id int identity (1,1) primary key,
	id_administrador int,
	id_categoria int,
	fecha datetime,
	constraint fk_adminCategorias_admin_id foreign key (id_administrador) references portal.usuarioAdministrador(id_administrador),
	constraint fk_adminCategorias_categoria_id foreign key (id_categoria) references portal.categoria(id_categoria)

)

--CARRITO

create table portal.carrito (
    id_usuario int,
    id_producto int,
    cantidad int
    constraint fk_usuario_carrito_id foreign key (id_usuario) references portal.usuarios(id_usuario),
    constraint fk_producto_carrito_id foreign key (id_producto) references portal.productos(id_producto)
)

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
select * from portal.carrito
