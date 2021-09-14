# eliminar CATEGORIAS
# delete

select * from categorias;

# Eliminar todos los registros
delete from categorias
	where categoria = 'BOLSA'; 
    
delete from categorias
	where categoria = 'BOTCA';  
    
delete from categorias
	where categoria = 'BOTDA';     
    
delete from categorias
	where categoria = 'ROPAC';
    
/* Intentar eliminar varios registros al mimso tiempo de la tabla categorias*/

SET SQL_SAFE_UPDATES = 1;  # default

# Configura para que sepuedan eliminar varios registros en una misma operación DML
SET SQL_SAFE_UPDATES=0;  

delete from categorias
	where categoria in ('BOTDA', 'BOTCA');
    
# O MEDIANTE OPERADOR LÓGICO or
delete from categorias
	where categoria = 'BOTDA' 
    or categoria = 'BOTCA';
    
delete from categorias
	where descripcion like 'BOT%';    
    
select * from categorias
		where descripcion like 'BOT%'
    


    
    
    
    
	