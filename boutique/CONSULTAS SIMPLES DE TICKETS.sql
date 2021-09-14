# select campos
#	from tabla
# 	where

# select proviene de las operaciones de algebra relacional
# proyección y selección 

# Q1 Consultar Todos los campos de la tabla tickets
select * from tickets;

# Q2 Consultar fecha y total de tickets
select fecha, total
	from tickets;

# Q3 Consulta clave, costo, preio de articulos
select clave, costo, precio
	from articulos;
    
# Q4 los tickets de dia 01 sept del 2021
select * from tickets
	where fecha = '2021-09-01';
        
select * from tickets
	where fecha between '2021-09-01' and '2021-09-03';
    
 select * from tickets
	where folio in (1000, 1001, 1002, 5000);
    
    
        
        
    
    