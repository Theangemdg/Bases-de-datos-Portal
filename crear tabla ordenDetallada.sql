create table portal.ordenDetallada(
	id_ordenDetallada int identity (1,1) primary key,
	id_orden int, 
	id_producto int,
	constraint fk_ordenDetallada_orden_id foreign key (id_orden) references portal.orden(id_orden),
	constraint fk_ordenDetallada_producto_id foreign key (id_producto) references portal.productos(id_producto),
	cantidad int not null
)