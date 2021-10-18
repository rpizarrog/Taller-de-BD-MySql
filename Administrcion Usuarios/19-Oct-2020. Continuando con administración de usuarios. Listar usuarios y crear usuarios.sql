# 19 oct 2020

-- Listar toos los usuarios
select User, Host from mysql.user;

show grants for ruben;

-- Los nombres del los usuarios que puede hacer select 
select user,host,select_priv from mysql.user;

-- Los nombres de los usuarios que pueden hacer select sobre esquema personal
select user,host, select_priv 
	from mysql.db
    where Db = 'personal';
    
-- 
describe mysql.db;   

 
 show privileges;
    
/* Crear un usuario llamado ‘paty’ y que pueda entrar 
desde cualquier host ‘%’ contraseña ‘prueba’ y 
se le va a otorgar privilegios de que pueda hacer 
select e insert sobre a cualquier tabla del esquema personal
*/

create user 'paty'@'%' identified by 'prueba';
grant select, insert on personal.* to 'paty';

show grants for paty;


/* Quitar permiso espcíficos */
REVOKE select, insert on *.* 
	from 'paty'@'%';
    
/* Quitar todos los permisos a paty */
REVOKE ALL PRIVILEGES, GRANT OPTION
  FROM 'paty'@'%';



