# DDL Data Definition Language  
# Crear BD inventarios_abarrotes

create database inventarios_abarrotes;

# Utilizar la BD o usar
use inventarios_abarrotes; # Seleccionar la BD

# Crear las tablas 
-- Productos = {id_producto, nombre, descripción, costo, precio, existencia}
-- Clasificacion = {id_clasificacion, descripción}
-- Movimientos = {no_movimiento consecutivo, id_producto, fecha, cantidad}
-- Tipos_movimientos = {tipo, nombre }

drop table movimientos;
drop table tipos_movimientos;
drop table productos;
drop table clasificacion;

create table clasificacion
(
	id_clasificacion char(1) primary key ,
    descripcion char(40)
);

create table productos
(
	id_producto char(10) primary key,
    nombre char(30),
    descripcion char(80),
    costo numeric,
    precio numeric,
    existencia numeric,
    id_clasificacion char(1),
    
    constraint foreign key FK_clasifica (id_clasificacion)  
		references  clasificacion(id_clasificacion) 
    
);

create table tipos_movimientos
(	
	tipo char(1) primary key,
	nombre char(20)
);

create table movimientos
(	
	no_movimiento integer auto_increment primary key,
    id_producto char(10), 
    fecha date, 
    cantidad numeric,
    tipo char(1),
    
    constraint foreign key FK_productos (id_producto)  
		references productos (id_producto),
    
    constraint foreign key FK_tipos (tipo)  
		references tipos_movimientos (tipo) 
);















