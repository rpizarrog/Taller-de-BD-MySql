# Operador union

select * from tickets
	where fecha = '2021-09-01'
union
select * from tickets
	where fecha = '2021-09-02';
    
    
select * from articulos
	where precio < 300
union
select * from articulos
	where precio > 500  ;
    
    
    
    