# select con funciones
use boutique;

# función distinct
# Valores distintos en totales de tickets
select * from tickets;

select distinct total
	from tickets;
    
# Los valores distintos de fechas en tickets
select distinct fecha
	from tickets;
    

# funciones min() max()
select max(total)
	from tickets;
    
select min(total)
	from tickets;
    
# Agrupar datos
# group_by
select sum(total), count(*), fecha
	from tickets
    group by (fecha)
	having sum(total) > 50;	
    
    
select sum(total), count(*), fecha
	from tickets
    -- group by (fecha)
    group by 3 # Posicion del campo
	having sum(total) > 50;	  
    
 # Tips para agrupar
 select fecha, sum(total), avg(total), count(*)
	from tickets
    -- group by 1;
    group by fecha;
    
    
# Tabla de detalle tickets
select * from detalletickets; 

-- Listar los total = sum(importe) por folio
select folio, sum(importe) 
	from detalletickets
    group by folio
    -- order by sum(importe);
    order by 2 desc;
    
 # Consulta de totales sum(importe) por producto   
 select clave, sum(importe)
	from detalletickets
    group by 1
    order by 2 desc;
    
# Actualizar la tabla de tickets conforme a sum(importe) de cada
# folio de ticket

UPDATE tickets
		SET total = 
		(
			SELECT SUM(importe) 
			FROM detalletickets
			WHERE tickets.folio = detalletickets.folio
		);
        
        
    

    
    
    
    
    
 
    

    