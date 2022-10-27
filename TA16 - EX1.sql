/*---------- 1.1 -------------*/
SELECT nombre FROM articulos;

/*---------- 1.2 -------------*/
SELECT nombre, precio FROM articulos;

/*---------- 1.3 -------------*/
SELECT nombre FROM articulos WHERE precio <= 200;

/*---------- 1.4 -------------*/
SELECT * FROM articulos WHERE precio BETWEEN 60 AND 120;

/*---------- 1.5 -------------*/
SELECT nombre, precio*166.386 AS `Precio en pesetas` FROM articulos;

/*---------- 1.6 -------------*/
SELECT AVG(precio) FROM articulos;

/*---------- 1.7 -------------*/
SELECT AVG(precio) FROM articulos WHERE fabricante=2;

/*---------- 1.8 -------------*/
SELECT COUNT(codigo) FROM articulos WHERE precio>=180;

/*---------- 1.9 -------------*/
SELECT nombre, precio FROM articulos WHERE precio>=180 ORDER BY precio DESC, nombre;

/*---------- 1.10-------------*/
SELECT articulos.*, fabricantes.* FROM articulos, fabricantes
WHERE articulos.fabricante = fabricantes.codigo; 

/*---------- 1.11 -------------*/
SELECT articulos.nombre, articulos.precio, fabricantes.nombre AS fabricante 
FROM articulos, fabricantes
WHERE articulos.fabricante=fabricantes.codigo;

/*---------- 1.12 -------------*/
SELECT fabricante, AVG(precio) AS average_price
FROM articulos
GROUP BY fabricante;

/*---------- 1.13 -------------*/
SELECT AVG(articulos.precio) AS precio_promedio, fabricantes.nombre
FROM articulos INNER JOIN fabricantes ON articulos.fabricante=fabricantes.codigo
GROUP BY articulos.fabricante;

/*---------- 1.14 -------------*/
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

/*---------- 1.15 -------------*/
select f.nombre, a.nombre, a.precio 
FROM articulos a  JOIN fabricantes f ON (f.codigo=a.codigo)
GROUP BY f.nombre 
ORDER BY a.precio DESC; 

/*---------- 1.16 INCOMPLETO -------------*/
SELECT AVG(articulos.precio) AS precio_promedio, fabricantes.nombre
FROM articulos INNER JOIN fabricantes ON articulos.fabricante=fabricantes.codigo
GROUP BY articulos.fabricante
HAVING AVG(articulos.precio) >= 150;

SELECT nombre, precio FROM articulos ORDER BY precio LIMIT 1;

/*---------- 1.17 -------------*/
INSERT INTO articulos(nombre, precio, fabricante) VALUES ('Altavoces', 70, 2);

/*---------- 1.18 -------------*/
UPDATE articulos SET nombre='Impresora laser' WHERE codigo=8;

/*---------- 1.19 -------------*/
UPDATE articulos SET precio=precio*0.9 WHERE codigo>0;

/*---------- 1.20 -------------*/
UPDATE articulos SET precio=precio-10 WHERE precio>=120;
