# Construir VISTAS
drop view v_septiembre;
drop view v_octubre;

create view v_septiembre
as
  select * from tickets
  where fecha between '2021-09-01' and '2021-09-30';
  
create view v_octubre
as
  select * from tickets
  where fecha between '2021-10-01' and '2021-10-31';  
  