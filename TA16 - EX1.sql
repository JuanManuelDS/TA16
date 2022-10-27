SELECT nombre FROM articulos;

SELECT nombre, precio FROM articulos;

SELECT nombre FROM articulos WHERE precio <= 200;

SELECT * FROM articulos WHERE precio BETWEEN 60 AND 120;

SELECT nombre, precio*166.386 AS `Precio en pesetas` FROM articulos;

SELECT AVG(precio) FROM articulos;

SELECT AVG(precio) FROM articulos WHERE fabricante=2;

SELECT COUNT(codigo) FROM articulos WHERE precio>=180;

SELECT nombre, precio FROM articulos WHERE precio>=180 ORDER BY precio DESC, nombre;

SELECT articulos.*, fabricantes.* FROM articulos, fabricantes
WHERE articulos.fabricante = fabricantes.codigo; 

SELECT articulos.nombre, articulos.precio, fabricantes.nombre AS fabricante 
FROM articulos, fabricantes
WHERE articulos.fabricante=fabricantes.codigo;

SELECT fabricante, AVG(precio) AS average_price
FROM articulos
GROUP BY fabricante;

SELECT AVG(articulos.precio) AS precio_promedio, fabricantes.nombre
FROM articulos INNER JOIN fabricantes ON articulos.fabricante=fabricantes.codigo
GROUP BY articulos.fabricante;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

select f.nombre, a.nombre, a.precio 
FROM articulos a  JOIN fabricantes f ON (f.codigo=a.codigo)
GROUP BY f.nombre 
ORDER BY a.precio DESC; 

SELECT AVG(articulos.precio) AS precio_promedio, fabricantes.nombre
FROM articulos INNER JOIN fabricantes ON articulos.fabricante=fabricantes.codigo
GROUP BY articulos.fabricante
HAVING AVG(articulos.precio) >= 150;

SELECT nombre, precio FROM articulos ORDER BY precio LIMIT 1;

INSERT INTO articulos(nombre, precio, fabricante) VALUES ('Altavoces', 70, 2);

UPDATE articulos SET nombre='Impresora laser' WHERE codigo=8;

UPDATE articulos SET precio=precio*0.9 WHERE codigo>0;

UPDATE articulos SET precio=precio-10 WHERE precio>=120;
