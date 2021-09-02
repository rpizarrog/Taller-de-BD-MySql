# Agregar registros a las tablas

use inventarios_abarrotes;
# Clasificacion

insert into clasificacion (id_clasificacion, descripcion)
values ('E', 'Enlatados');

insert into clasificacion (id_clasificacion, descripcion)
values ('L', 'Productos de Limpieza');

select * from clasificacion;

# Productos
insert into productos (id_producto, nombre, descripcion, costo, precio)
	values ("FRIJ100", "FRIJOL 100", "LATA DE FRIJOLES DE 100 GRS",
    100, 150);
    
insert into productos (id_producto, nombre, descripcion, costo, precio)
	values ("CHIH100", "CHIH 100", "LATA DE CHICHAROS 100 GRS",
    80, 120);
    
insert into productos (id_producto, nombre, descripcion, costo, precio)
	values ("JABON500", "JABON DE 500", "JABON EN POLVO MARCA X DE 500 GRS",
    70, 90);
    
insert into productos (id_producto, nombre, descripcion, costo, precio)
	values ("BOT1", "BOTELLA LIMPIADOR", "BOTELLA DE LIMPIADOR MARCA X DE UN LITRO",
    120, 159);
    
select * from productos;

# tipos de movimientos
insert into tipos_movimientos (tipo, nombre)
values ("E", "Entrada");

insert into tipos_movimientos (tipo, nombre)
values ("S", "Salida");

select * from tipos_movimientos;

# Movimientos
insert into movimientos (id_producto, fecha, cantidad, tipo)
values ("FRIJ100", "2021/09/01", 10, "E");

insert into movimientos (id_producto, fecha, cantidad, tipo)
values ("FRIJ100", "2021/09/01", 15, "E");

insert into movimientos (id_producto, fecha, cantidad, tipo)
values ("FRIJ100", "2021/09/01", 5, "S");

insert into movimientos (id_producto, fecha, cantidad, tipo)
values ("CHIH100", "2021/09/01", 50, "E");

insert into movimientos (id_producto, fecha, cantidad, tipo)
values ("JABON500", "2021/09/02", 20, "E");

insert into movimientos (id_producto, fecha, cantidad, tipo)
values ("BOT1", "2021/09/02", 35, "E");

insert into movimientos (id_producto, fecha, cantidad, tipo)
values ("BOT1", "2021/09/02", 2, "S");

select * from movimientos;




    

