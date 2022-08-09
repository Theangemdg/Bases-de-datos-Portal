create table portal.productos(
	id_producto int primary key,
	nombre nvarchar(50) not null,
	[descripcion] nvarchar(200),
	precio int not null,
	id_categoria int,
	imagen nvarchar(50),
	constraint fk_categoria_productos_id foreign key (id_categoria) references portal.categoria(id_categoria)
)