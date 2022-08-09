create table portal.orden(
	id_orden int identity (1,1) primary key, 
	id_usuario int, 
	id_tipoEntrega int,
	id_tipoPago int,
	id_estado int,
	id_empleado int,
	constraint fk_usuario_orden_id foreign key (id_usuario) references portal.usuarios(id_usuario),
	constraint fk_tipoEntrega_orden_id foreign key (id_tipoEntrega) references portal.tipoEntrega(id_tipoEntrega),
	constraint fk_tipoPago_orden_id foreign key (id_tipoPago) references portal.tipoPago(id),
	constraint fk_estadoOrden_orden_id foreign key (id_estado) references portal.estado(id_estado),
	constraint fk_empleado_orden_id foreign key (id_empleado) references portal.empleado(id_empleado),
	fecha_orden datetime not null
)