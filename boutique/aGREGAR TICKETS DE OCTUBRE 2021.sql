# Agregar tickets de OCTUBRE
insert into tickets(folio, fecha, total)
	values (2001, "2021-10-02", 0);  
    
insert into detalletickets (folio, clave, cantidad, precio_venta, importe)
	values (2001, "CHAMCA", 2, 900, 2 * 900);

insert into detalletickets (folio, clave, cantidad, precio_venta, importe)
	values (2001, "CHAMDA", 3, 1000, 3 * 1000);
    
insert into tickets(folio, fecha, total)
	values (2002, "2021-10-03", 0);  
    
insert into detalletickets (folio, clave, cantidad, precio_venta, importe)
	values (2002, "CHAMCA", 3, 600, 23* 600);

insert into detalletickets (folio, clave, cantidad, precio_venta, importe)
	values (2002, "CHAMDA", 4, 1100, 4 * 1100);    