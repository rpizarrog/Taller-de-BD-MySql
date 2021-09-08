# AGREGAR REGISTROS

use boutique;

# colonias
insert into colonias (colonia, nombre, cpostal)
	values (1, "CENTRO", 34000);
    
insert into colonias (colonia, nombre, cpostal)
	values (2, "INSURGENTES", 34090);
    
insert into colonias (colonia, nombre, cpostal)
	values (3, "2 DE SEPTEMBRE", 34830);
    
insert into colonias (colonia, nombre, cpostal)
	values (4, "DIVISION NORTE", 34930);
    
insert into colonias (colonia, nombre, cpostal)
	values (5, "FRACC. SAHUATOBA", 34910);
    
select * from colonias;

# clientes
insert into clientes (no_cliente, rfc, nombre, calle, nocasa, colonia)
	values (100, "PIGR691106", "RUBEN PIZARRO", "PRIV. DEL SUR", "116", 4);
    
insert into clientes (no_cliente, rfc, nombre, calle, nocasa, colonia)
	values (102, 'GOPA000403', "GONZALEZ PEREZ ARNUFLO", "CALLE DEL AMANECER", "1234", 1);
    
insert into clientes (no_cliente, rfc, nombre, calle, nocasa, colonia)
	values (104, "PIPB200304", "PINEDA PEREZ BRENDA", "5 DE FREBRERO", "EDIF A DEPTO 2", 1);
    

select * from clientes;

# CAGEGORIAS
insert into categorias (categoria, descripcion)
	values ("ROPAD", "ROPA PARA DAMA");

insert into categorias (categoria, descripcion)
	values ("ROPAC", "ROPA PARA CABALLERO");
    
insert into categorias (categoria, descripcion)
	values ("ZAPAD", "ZAPATO PARA DAMA");

insert into categorias (categoria, descripcion)
	values ("ZAPAC", "ZAPATO PARA CABALLERO");

select * from categorias;
    
# articulos
insert into articulos (clave, nombre, costo, precio, categoria)
	values ("CHAMDA","CHAMARRA DE PIEL MED", 340, 500, "ROPAD");
    
insert into articulos (clave, nombre, costo, precio, categoria)
	values ("CHAMCA","CHAMARRA DE PIEL MED", 430, 540, "ROPAC");
    
insert into articulos (clave, nombre, costo, precio, categoria)
	values ("ZAPDAM","ZAPATO DAMA DEL 4", 440, 550, "ZAPAD");

insert into articulos (clave, nombre, costo, precio, categoria)
	values ("ZAPCAB","ZAPATO CABALLERO DEL 8", 590, 700, "ZAPAC");

SELECT * from articulos;    

# tICKET
# SE VENDE UNA CHAMARRA PARA DAMA Y UNOS ZAPATOS PARA CABALLERO
insert into tickets(folio, fecha, total)
	values (1000, "2021-09-01", 0);  
    
insert into detalletickets (folio, clave, cantidad, precio_venta, importe)
	values (1000, "CHAMDA", 1, 800, 1 * 800);
    
insert into detalletickets (folio, clave, cantidad, precio_venta, importe)
	values (1000, "ZAPCAB", 1, 1200, 1 * 1200);

# Se agrega otra Venta en ticket
insert into tickets(folio, fecha, total)
	values (1001, "2021-09-02", 0);  
    
insert into detalletickets (folio, clave, cantidad, precio_venta, importe)
	values (1001, "CHAMCA", 2, 900, 2 * 900);

insert into detalletickets (folio, clave, cantidad, precio_venta, importe)
	values (1001, "CHAMDA", 3, 1000, 3 * 1000);
    
# oTRA tercera venta 1003
# Se agrega otra Venta en ticket
insert into tickets(folio, fecha, total)
	values (1002, "2021-09-02", 0);  
    
insert into detalletickets (folio, clave, cantidad, precio_venta, importe)
	values (1002, "CHAMCA", 1, 900, 1 * 900);

insert into detalletickets (folio, clave, cantidad, precio_venta, importe)
	values (1002, "CHAMDA", 2, 1000, 2 * 1000);
        
select * from tickets;
select * from detalletickets;

    
    

    
    
    
    