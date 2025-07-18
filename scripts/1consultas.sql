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
SELECT p.id_pelicula, 
p.titulo
FROM pelicula AS p 
INNER JOIN inventario AS i ON p.id_pelicula = i.id_pelicula
INNER JOIN alquiler AS a ON i.id_pelicula = a.id_pelicula  
WHERE a.fecha_alquiler > NOW() - 1 YEAR
ORDER BY COUNT(p.id_alquiler) DESC  
LIMIT 5;

-- 3 
SELECT SUM()
FROM alquiler
INNER JOIN 
WHERE 
GROUP BY  
;

-- 4
SELECT
FROM 
WHERE  

-- 5

-- 6