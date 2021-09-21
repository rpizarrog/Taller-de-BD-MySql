# Subconsultas
use boutique;

# Q1. Todo las categorias que SI tienen productos
SELECT * from categorias
	where categoria in 
		(select categoria from articulos);
    

# Q2. Todo las categorias que NO tienen productos

SELECT * from categorias
	where categoria not in 
		(select categoria from articulos);
        
# Q3 Todos los nombres de productos O artículos que aparecen en los detalle de los tickets
# Todos los productos que SI SE HAN VENDIDO
select * from articulos
	where clave in (select clave from detalletickets);
    
# Q4 Todos los nombres de productos O artículos que NO aparecen en los detalle de los tickets
# Todos los productos que NO SE HAN VENDIDO
select * from articulos
	where clave not in (select clave from detalletickets);    

# Se puede utilizar subconsutlas en operaciones update y delete
# Cambiar el precio de venta de articulos que no se han vendido
# disminuyendo en un 20%

# Configura para que sepuedan eliminar varios registros en una misma operación DML
SET SQL_SAFE_UPDATES=0; 

update articulos
	set precio = precio - (precio * 0.20),
		nombre = concat(nombre," modificado")
    where clave not in (select clave from detalletickets);   
    


# Utilizando la cláusula exists
# Q5 Consultar todos los tickets que SI SE HAN FACTURADO
select folio_ticket from facturas
	where exists (select folio from tickets);
    
    
# Q6 Consultar todos los tickets que NO SE HAN FACTURADO 
# Se utiliza in en lugar de exists para resolver la ncesidad de consulta   
select folio from tickets
	where folio not in (select folio_ticket from facturas);


# Utilizar subconsultas con isnert
# Primero inventamos una tabla de productos
create table productos_varios
(
	clave char(6) primary key,
    nombre char(60),
    costo float,
    precio float,
    categoria char(5)    
);


insert into productos_varios
	values ('X', "PRODUCTO X",100, 200, 'CHAMC');
insert into productos_varios
	values ('Y', "PRODUCTO Y",110, 210, 'CHAMC');
insert into productos_varios
	values ('Z', "PRODUCTO Z",120, 220, 'CHAMC');
    
select * from productos_varios;    

# Subconsulta con insert
insert into articulos
	select * from productos_varios;
    



