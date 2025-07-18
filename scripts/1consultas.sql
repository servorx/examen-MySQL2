-- 1 
SELECT c.id_cliente,
c.nombre,
c.apellidos,
COUNT(a.id_alquiler) as cantidad_alquileres
FROM cliente AS c 
INNER JOIN alquiler as a ON c.id_cliente = a.id_cliente
GROUP BY c.id_cliente, c.nombre, c.apellidos
HAVING a.fecha_alquiler < (NOW() - 6 MONTH)
ORDER BY COUNT(a.id_alquiler) DESC 
;

-- 2 
SELECT 
FROM 
WHERE
ORDER BY  
LIMIT 5;

-- 3 
SELECT  
FROM 
WHERE 
GROUP BY  
;

-- 4
SELECT
FROM 
WHERE  

-- 5

-- 6