# Crear tablas  boutique
use boutique;

drop table articulos;
drop table categorias;
drop table clientes;
drop table colonias;


create table colonias
(
	colonia integer primary key,
    nombre char(60),
    cpostal char(5)
);

create table clientes
(
	no_cliente integer primary key,
	rfc char(13) unique key,
    nombre char(80),
    calle char(80),
    nocasa char(20),
    colonia integer,
    
    constraint foreign key fkcolonias (colonia)
		references colonias (colonia)
);

create table categorias
(
	categoria char(5) primary key,
    descripcion char(60)
);

create table articulos
(
	clave char(6) primary key,
    nombre char(60),
    costo float,
    precio float,
    categoria char(5),
    
    constraint foreign key fkcategorias (categoria)
		references categorias (categoria)
);

create table tickets
(
	folio integer primary key,
    fecha date,
    total float
);

create table detalletickets
(
	folio integer, # references
	clave char(6), # references
    cantidad integer,
    precio_venta float,
    importe float, # precio * cantidad
    
    constraint foreign key FKticket (folio)
		references tickets (folio),
        
    constraint foreign key FKproductos (clave)
		references articulos (clave)
);

create table facturas
(
	no_factura char(10),
    fecha date,
    folio_ticket integer, # references
    rfc char(13), # references
    subtotal float, # = total del ticket
    iva float, # / 1.16 IVA DESGLOSADO
    total float, # suma de subtotal + iva
    
    constraint foreign key ticket (folio_ticket)
		references tickets (folio),
    
    constraint foreign key clientes (rfc)
		references clientes (rfc)
);


