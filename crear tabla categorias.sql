create table portal.categorias(
	id_categoria int primary key, 
	nombreCategoria nvarchar (50)not null,
	descripcion nvarchar(200),
	icono nvarchar(50)
)