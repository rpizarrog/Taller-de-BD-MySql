/* Con usuario Aracely*/

create database aracelyprueba;

use aracelyprueba;

create table prueba (
	numero int primary key,
    nombre varchar(10)
);

insert into aracelyprueba.prueba (numero, nombre)
	values (1, 'RUBEN');
    
insert into prueba (numero, nombre)
	values (2, 'ARACELY');
    
select * from prueba;
    
    
    
    
