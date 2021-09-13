# Crear un ticket para actualizar el total de la venta
# en tickets


SET SQL_SAFE_UPDATES=0;

drop trigger tr_act_totales_tickets;

DELIMITER $$
CREATE TRIGGER tr_act_totales_tickets
	after insert on detalletickets
	FOR EACH ROW
	BEGIN
	-- Determina la suma de todos los importes del folio nuevo
	 set @folio = NEW.folio;
     
    -- Actualiza el total en tickets
		UPDATE tickets
		SET total = 
		(
			SELECT SUM(importe) 
			FROM detalletickets
			WHERE tickets.folio = detalletickets.folio
		)
        where tickets.folio = @folio;
          --  where folio = @folio;

	END;
$$
DELIMITER ;


# Probar el Trigger
# SE VENDE UNA CHAMARRA PARA DAMA Y UNOS ZAPATOS PARA CABALLERO
insert into tickets(folio, fecha, total)
	values (1005, "2021-09-01", 0);  
    
insert into detalletickets (folio, clave, cantidad, precio_venta, importe)
	values (1005, "CHAMDA", 1, 800, 1 * 800);
    
insert into detalletickets (folio, clave, cantidad, precio_venta, importe)
	values (1005, "ZAPCAB", 1, 1200, 1 * 1200);
