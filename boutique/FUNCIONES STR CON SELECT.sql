# cONSULTAS CON expresiones de strin

select * from clientes;

select lower(nombre) as "nombre MINUSCUL"
from clientes;

 select *
	from clientes
    where nombre like upper("%peREz%");
    

-- Q Los que no tengan PEREZ
 select *
	from clientes
    where nombre NOT like '%PEREZ%';
    
 -- Q CLIENTS QUE inicien con P O R 
 SELECT * FROM clientes
WHERE nombre LIKE '[!RP]%';  -- pENDIENTE