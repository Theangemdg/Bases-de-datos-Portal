use portal

--usuarios
insert into portal.usuarios 
values (1, 'Juan', 'Perez', 25, '99154455', 'asd12345', 'jperez@gmail.com');
insert into portal.usuarios 
values (2, 'Maria', 'Gimenez', 21, '88667755', '123456789', 'mGimenez@gmail.com');
insert into portal.usuarios 
values (3, 'Jose', 'Hernandez', 28, '89675645', 'hndz00987', 'jHernandez@gmail.com');
insert into portal.usuarios
values (4, 'Pedro', 'Ramirez', 40, '97154678', 'pedro1234', 'pedroR@gmail.com');
insert into portal.usuarios
values (5, 'kamisato', 'ayaka', 20, '89280912', 'aya123', 'ayakakami12@gmail.com');
insert into portal.usuarios
values (6, 'Josue', 'Suazo', 30, '97733812', 'josuazo21', 'josuazo23@gmail.com');
insert into portal.usuarios
values (7, 'Miranda', 'Galvez', 24, '843998322', 'glv44mir', 'glvmir79@gmail.com');
insert into portal.usuarios
values (8, 'Fransheska', 'Chain', 21, '95532244', 'franin4302', 'fransheska.chain91@gmail.com');
insert into portal.usuarios
values (9, 'Austin', 'Juarez', 30, '89980912', 'juarezA88', 'juastin9012@gmail.com');

-- CATEGORIAS
insert into portal.categoria
values (1,'Postres', 'Descripcion Categoria postres', 5,'../img/PostresIcono.jpg');
insert into portal.categoria
values (2, 'Bebidas', 'Descripcion categoria bebidas',8, '../img/BebidasIcono.jpg');
insert into portal.categoria
values (3, 'Desayunos', 'Descripcion categoria desayunos',15, '../img/DkmediaDocena.jpg');
insert into portal.categoria
values (4, 'Hamburguesas', 'Descripcion categoria hamburguesas',7, '../img/hamburguesaIcono.jpg');
insert into portal.categoria
values (5, 'Pizzas', 'Descripcion categoria pizzas',10, '../img/iconoPizza.jpg');


--PRODUCTOS
insert into portal.productos
values (1, 'Hamburguesa whopper', 'Descripcion hamburguesa whopper', 120, 4, '../img/PizzaPeperoni.jpg');
insert into portal.productos
values (2, 'Pizza 4 estaciones', 
		'Cuatro diferentes especialidades en una sola pizza: super suprema, canadiense, pepperoni y jamon', 300, 
		5, '../img/PizzaPeperoni.jpg');
insert into portal.productos
values (3, 'Pecan pie', 'Pastel de nueces con pecañas bañado con chocolate', 90, 1, '../img/PizzaPeperoni.jpg');
insert into portal.productos
values (4, 'Horchata', 'Fresco de horchata', 25, 2, '../img/PizzaPeperoni.jpg');
insert into portal.productos
values(5, 'Plato de desayuno', 'Desayuno de huevo con frijoles, aguacate, queso y platano', 80, 3, '../img/PizzaPeperoni.jpg');
insert into portal.productos
values (6, 'Limonada', 'Refresco natural de limon', 25, 2, '../img/PizzaPeperoni.jpg');
insert into portal.productos
values (7, 'Pizza de pepperoni', 'Pizza de pepperoni con orillas de queso', 100, 5, '../img/PizzaPeperoni.jpg');
insert into portal.productos
values (8, 'Muffin catracho', 'Muffin catracho con jamon, queso y carne', 90, 3, '../img/PizzaPeperoni.jpg');
insert into portal.productos
values (9, 'Hamburgesa veggie whopper', 'Hamburguesa de vegetales con carne', 150, 4, '../img/PizzaPeperoni.jpg');
insert into portal.productos 
values (10, 'Ultimate hersheys chocolate chip cookie', 'Crujiente galleta horneada con chispas de chocolate hersheys', 160, 1, '../img/PizzaPeperoni.jpg');


--TARJETAS
insert into portal.tarjeta(id_tarjeta,id_usuario,fecha_expiracion,CVV) 
values	('1478521478569823',3,'15/05/2026','456'),('1578002478560000',4,'14/07/2024','653'),
		('150078654720973',5,'07/11/2028','456'),  ('4544116547892321',2,'28/12/2026','433'),
		('3510546571006549',6,'07/03/2028','456'), ('4544456347890223',7,'23/12/2023','456'),
		('3530781561006531',8,'05/07/2028','456'),('3510422126322541',9,'01/06/2025','322')

--TIPO PAGO
insert into portal.tipoPago
values ('Tarjeta')
insert into portal.tipoPago
values ('Efectivo')

--TIPO EMPLEADO
insert into portal.tipoEmpleado
values (1, 'Administrador');
insert into portal.tipoEmpleado
values (2, 'Cajero')
insert into portal.tipoEmpleado
values (3, 'Cocinero')

--EMPLEADOS
insert into portal.empleado
values (1, 1, 'Irma', 'Canales', '89765432', 44, 'irmaC504@gmail.com', '05/10/2012');
insert into portal.empleado
values (2, 2, 'Andres', 'Lainez', '85431234', 24, 'andres@gmail.com', '08/12/2020');
insert into portal.empleado
values (3, 2, 'Josue', 'Moncada', '95784321', 21, 'josueMda@gmail.com', '10/08/2021'); 
insert into portal.empleado
values (4, 2, 'Elmer', 'Godoy', '93456789', 27, 'elmer504@gmail.com', '06/01/2021');
insert into portal.empleado 
values (5, 2, 'David', 'Martinez', '96453821', 24, 'davidMtz@gmail.com', '07/09/2021');
insert into portal.empleado
values (6, 3, 'Javier', 'Nuñez', '33098743', 30, 'javiernun@gmail.com', '06/04/2020');
insert into portal.empleado 
values (7, 3, 'Pamela', 'Sevilla', '97952633', 23, 'davidMtz@gmail.com', '07/10/2021');

--TIPO DE ENTREGA
insert into portal.tipoEntrega (descripcion)
values ('Domicilio')
insert into portal.tipoEntrega (descripcion)
values ('Restaurante')


--ESTADOSS DE LAS ORDENES
insert into portal.estado
values (1, 'En proceso');
insert into portal.estado
values (2, 'Lista');
insert into portal.estado 
values (3, 'Cancelada');

--ORDENES
insert into portal.orden 
values ( 1, 1, 1, 2, 3, '07/10/2022');
insert into portal.orden
values ( 2, 2, 2, 2, 3,'05/05/2022');
insert into portal.orden
values ( 1, 1, 1, 2, 3,'04/08/2022');
insert into portal.orden
values ( 2, 2, 2, 1, 3,'03/09/2022');
insert into portal.orden
values ( 6, 3, 1, 1, 3,'02/08/2022');
insert into portal.orden 
values ( 5, 3, 1, 2, 3,'04/11/2022');
insert into portal.orden
values ( 7, 4, 2, 1, 3,'04/05/2022');
insert into portal.orden
values ( 8, 6, 1, 1, 3,'03/08/2022');
insert into portal.orden
values ( 3, 5, 2, 1, 3,'03/09/2022');
insert into portal.orden
values ( 4, 2, 1, 2, 3,'08/06/2022');
insert into portal.orden
values ( 5, 5, 2, 1, 3,'08/06/2022 23:59:04');
insert into portal.orden 
values ( 6, 1, 1, 2, 3, '07/15/2022');
insert into portal.orden 
values ( 9, 2, 1, 2, 3, '03/23/2022');

select * from portal.orden
--Detalle Orden
insert into portal.ordenDetallada
values (1, 7, 2);
insert into portal.ordenDetallada
values (3, 8, 3)
insert into portal.ordenDetallada
values (2, 1, 4)
insert into portal.ordenDetallada
values (4, 5, 5)
insert into portal.ordenDetallada
values (8, 3, 1)
insert into portal.ordenDetallada
values (11, 4, 4)
insert into portal.ordenDetallada
values (9, 1, 2)
insert into portal.ordenDetallada
values (10, 5, 1)
insert into portal.ordenDetallada
values (12, 2, 2)
-------------------------
insert into portal.ordenDetallada
values (1, 1, 4)
insert into portal.ordenDetallada
values (4, 5, 5)
insert into portal.ordenDetallada
values (2, 3, 1)
insert into portal.ordenDetallada
values (11, 4, 4)
insert into portal.ordenDetallada
values (2, 1, 2)
insert into portal.ordenDetallada
values (3, 5, 1)
insert into portal.ordenDetallada
values (2, 2, 2)


--USUARIOS ADMINS
insert into portal.usuarioAdministrador(id_administrador,nombre,apellido,telefono,edad,correo,contraseña)
values		(10500,'Johan','Murillo','98745632',28,'JhMurillo@example.com','asd123'),(10501,'Carlos','Maradiaga','32456879',34,'CarlosMD@example.com','asd123'),
			(10502,'Julio','Romanov','99887744',30,'JLRom@example.com','asd123'),(10503,'Juan','Costero','33445216',40,'JnCos@example.com','asd123'),
			(10504,'Mayra','Ramirez','33456892',25,'MrRam@example.com','asd123'),(10505,'kamisato','Ayaka','33456892',20,'kamisato@gmail.com','aya123')

--RECETAS
insert into portal.receta(id_receta, id_producto,tiempoPreparacion,servir,descripcion)
values		(1, 1, 15, 1,'Hamburguesa Whopper con doble carne,tomate, lechuga, queso chedar'),
			(2, 2, 35, 4,'Pizza 4 estaciones, con pan pizza, champiñones, peperoni, queso mozarella, jamon'),
			(3, 3, 90, 3,'Pecan pie'),
			(4, 4, 10, 4,'Fresco natural de Horchata hecho con distintos ingredientes'),
			(5, 5, 25, 2,'Desayuno tipico, huevo,frijoles,queso,aguacate')


--PROVEEDORES
select * from Portal.proveedores
insert into portal.proveedores(id_proveedor,nombre,apellido,edad,correo,empresa) 
values		(5001,'Armando','Caceres',35,'ArmanCac@gmail.com','Meats internationals'),(5002,'Carlos','Mejia',30,'CarlM@gmail.com','Vegetales alphonse'),
			(5003,'Ricardo','Jimenez',28,'RickJim@gmail.com','Lacteos Ricky'),(5004,'Ariel','Murillo',22,'AriMuri@gmail.com','SULA'),
			(5005,'Guillermo','Hernandez',34,'GuilHer@gmail.com','Rockstar')
--INGREDIENTES
insert into portal.ingredientes(nombre,fechaVencimiento,id_Proveedor,cantidadDisponible)
values		('Harina','15/12/2030',5005,30),('Carne de ternera','22/07/2023',5001,50),('Queso Chedar','09/09/2034',5003,25),
			('Carne de Bufalo','28/12/2030',5001,30),('Tomates','07/11/2032',5002,55)



--INGREDIENTES QUE USAN LAS RECETAS
insert into portal.ingredientes_utilizar(id_receta,id_ingredientes,cantidad)
values		(1, 1, 2),(2, 2, 2),(3, 3, 3),(4, 1, 1)

select * from portal.ingredientes_utilizar
select * from portal.receta
select * from portal.ingredientes

--REGISTROS DE ADMINISTRADORES QUE MODIFICARON LAS CATEGORIAS
insert into portal.adminCategorias(id_administrador,id_categoria,fecha)
values		(10500, 1,'06/01/2022'),(10501, 3,'09/10/2022'),(10503, 2,'12/08/2022'),(10502, 4,'11/08/2021'),(10504,5, '06/05/2022')


insert into portal.adminIngredientes(id_administrador,id_ingredientes,fecha)
values		(10504,1,'06/05/2022'),(10502,2,'09/10/2021'),(10503,3,'12/08/2022'),(10501,4,'11/08/2021'),(10500,2,'06/05/2022')


insert into portal.adminProductos(id_administrador,id_producto,fecha)
values		(10502,10,'06/05/2022'),(10504,5,'09/02/2021'),(10500,2,'12/08/2021'),(10501,1,'11/07/2021'),(10502,8,'06/06/2022')
