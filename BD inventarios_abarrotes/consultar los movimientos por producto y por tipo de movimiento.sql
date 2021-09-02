# Consultar los movimientos por productp y por tipo de movimiento

use inventarios_abarrotes;

SELECT id_producto, tipo, sum(cantidad)
from movimientos
group by id_producto, tipo
order by id_producto;

