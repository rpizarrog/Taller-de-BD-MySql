# Otras funciones

# Fecha

select day(fecha), month(fecha), year(fecha), 
	dayofweek(fecha),fecha
	from tickets;
    
-- Cual dia de la semana ha sido de mayor vena con respecto 
--  la suma de total en los tickets    
select dayofweek(fecha) , sum(total)
from tickets
group by 1;


select dayname(fecha) as 'Dia de la semana', sum(total) as 'Suma Por Dia'
from tickets
group by 1;


