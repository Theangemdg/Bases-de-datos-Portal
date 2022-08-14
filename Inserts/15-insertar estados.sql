use Portal_p
--se editaron los inserts de estado
insert into portal.estado
values (1, 'En proceso');

insert into portal.estado
values (2, 'Lista');

insert into portal.estado 
values (3, 'Cancelada');

select * from portal.estado