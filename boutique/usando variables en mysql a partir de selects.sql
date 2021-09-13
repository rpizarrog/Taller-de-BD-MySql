# Actualizar total

-- SET SQL_SAFE_UPDATES=0; # Para actualizar varios al mismo tiempo
SET SQL_SAFE_UPDATES=0;

UPDATE tickets
SET total = 
    (
    SELECT SUM(importe) 
    FROM detalletickets
    WHERE tickets.folio = detalletickets.folio
    );
    
    