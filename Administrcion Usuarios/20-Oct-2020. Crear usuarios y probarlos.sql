/* Con usuario root*/
/* 
6.	Crear un usuario llamado ‘aracely’ y 
que pueda entrar desde cualquier host ‘%’ 
contraseña ‘prueba’ y 
que pueda crear objetos desde una nueva BD 
hasta nuevas tablas
*/


create user 'aracely'@'%' identified by 'prueba';

grant create, insert, update, delete, select
	on *.* to 'aracely'@'%';
    
    
/* 7.	Crear un rol que se llame lector y 
 permita consultar cualquier tabla de cualquier 
 base de datos y 
 otorgar ese rol a un usuario llamado 
 ‘maria’@’%’ de contraseña prueba.
 */
 
 drop role lector;
 
 CREATE ROLE 'lector';
 -- create role 'lector'@'%';
 
-- grant select on *.* to lector;
-- GRANT EXECUTE ON *.* TO  lector;
GRANT SELECT ON *.* TO 'lector';

create user 'maria'@'%' identified by 'prueba';

-- GRANT mantenimiento_basico,consulta_basica TO 'user1'@'%'; 
grant 'lector' to 'maria'@'%';

-- Asignarle por default el rol de lector a maria
SET DEFAULT ROLE 'lector' TO 'maria'@'%';


