# FUNCIONES PARA BUSQUDAS
# LIKE Y COMODINES
select * from clientes;

-- Q Clientes que tengan la letra P en su nombre
select *
	from clientes
    where nombre like "%P%";
    
 -- Q clientes que inicien con la palabra RUBEN
 select *
	from clientes
    where nombre like "RUBEN%";
    
-- Q CLIENTES que tengan PEREZ en su nombre
 select *
	from clientes
    where nombre like "%PEREZ%";
    
    