/* Insistir con los roles */

drop role 'lector';

CREATE ROLE 'app_developer', 'app_read', 'app_write', 'lector';

GRANT select ON *.* TO 'lector';

drop user 'maria'@'%';
CREATE USER 'maria'@'%' IDENTIFIED BY 'prueba';

-- Otorgar el permiso de lector a maria
GRANT 'lector' TO 'maria'@'%';

-- MOSTAR LOS PERMISOS DE MARIA
SHOW GRANTS FOR 'maria'@'%' USING 'lector';

-- Designar el rol por deault a maria
-- Quin hace esto es el root.. Verificar ...
Set Default role 'lector' to 'maria'@'%'   


-- Quitar roles a maria
-- SET ROLE NONE to 'maria'@'%';

set role none;

SHOW GRANTS FOR 'maria'@'%' USING 'lector';

-- revoke 'lector' from 'maria'@'%' with admin;
REVOKE ALL PRIVILEGES, GRANT OPTION
  FROM 'maria'@'%' ;
  






