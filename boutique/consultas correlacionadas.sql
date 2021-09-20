# Consultas correlacionadas con joins
# Consultas de dos a mas tablas. 
# Productos cartesianos, selecciones y proyecciones
# join natural
# Q1 
# Consulta de detalle tickets y articuls
# Clave y Nombre los artículos , 
# Incluyendo no ticket, costo del articulo, 
# precio de venta a como se vendió, cantidad, importe
select folio, detalletickets.clave,
		nombre,  costo,
        cantidad, precio_venta, importe 
	from detalletickets, articulos
		where detalletickets.clave = articulos.clave
        order by 1, 3; -- join natural
		
-- Utilizando la expresión JOIN        
select folio, detalletickets.clave,
		nombre,  costo,
        cantidad, precio_venta, importe 
	from detalletickets
    join articulos on detalletickets.clave = articulos.clave
    order by 1, 3;
    
# Q2 
# Clientes que hayan facturado. 
# No Factura, Fecha factura, Total de Factura , 
# Folio de ticket y fecha ticket y total, 
# rfc y nombre del cliente
-- join natural
select no_factura, facturas.fecha, facturas.total,
	folio, tickets.fecha, tickets.total,
    facturas.rfc, nombre
    from facturas, tickets, clientes
    where facturas.folio_ticket = tickets.folio -- join
		and facturas.rfc = clientes.rfc; -- join
        
-- Usando Claúsula join
select no_factura, facturas.fecha, facturas.total,
	folio, tickets.fecha, tickets.total,
    facturas.rfc, nombre
    from facturas
		join tickets on facturas.folio_ticket = tickets.folio
		join clientes on facturas.rfc = clientes.rfc;
        
# Q3 La misma consulta Q2 pero con clave, cantidad precio venta e importe de productos
select no_factura, facturas.fecha, facturas.total,
	tickets.folio, tickets.fecha, tickets.total,
    facturas.rfc, nombre,
    clave, cantidad, precio_venta, importe
    from facturas
		join tickets on facturas.folio_ticket = tickets.folio
		join clientes on facturas.rfc = clientes.rfc
        join detalletickets on tickets.folio = detalletickets.folio;
    
    
# Q4
# De la consulta 3 inclúye el nombre del artículo
select no_factura, facturas.fecha, facturas.total,
	tickets.folio, tickets.fecha, tickets.total,
    facturas.rfc, clientes.nombre,
    detalletickets.clave, articulos.nombre, cantidad, precio_venta, importe
    from facturas
		join tickets on facturas.folio_ticket = tickets.folio
		join clientes on facturas.rfc = clientes.rfc
        join detalletickets on tickets.folio = detalletickets.folio
        join articulos on detalletickets.clave = articulos.clave ; 
      
    
# Q5
# De la consulta 4, inclúyele la categoría del artículo
  select no_factura, facturas.fecha, facturas.total,
	tickets.folio, tickets.fecha, tickets.total,
    facturas.rfc, clientes.nombre,
    detalletickets.clave, articulos.nombre, cantidad, precio_venta, importe,
    categorias.categoria, categorias.descripcion
    from facturas
		join tickets on facturas.folio_ticket = tickets.folio
		join clientes on facturas.rfc = clientes.rfc
        join detalletickets on tickets.folio = detalletickets.folio
        join articulos on detalletickets.clave = articulos.clave 
        join categorias on articulos.categoria = categorias.categoria; 
        
        
     
     
    