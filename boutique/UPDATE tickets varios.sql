# Actualizar registros

SET SQL_SAFE_UPDATES = 1;  # default

SET SQL_SAFE_UPDATES = 0;  # default

update tickets
	set total = -100
    where folio = 1000;
    
update tickets
	set total = 0
    where folio = 1000;
    
update tickets
	set total = 0;
    