/*--------------- 3.1 --------------*/
SELECT * FROM almacenes;

/*--------------- 3.2 --------------*/
SELECT * FROM cajas WHERE valor>150;

/*--------------- 3.3 --------------*/
SELECT * FROM cajas GROUP BY contenido;

/*--------------- 3.4 --------------*/
SELECT AVG(valor) AS `valor medio` FROM cajas;

/*--------------- 3.5 --------------*/
SELECT AVG(valor), almacen AS `valor medio` FROM cajas GROUP BY almacen;

/*--------------- 3.6 --------------*/
SELECT almacen FROM cajas GROUP BY almacen HAVING AVG(valor)>150;

/*--------------- 3.7 --------------*/
SELECT c.num_referencia, a.lugar FROM cajas AS c, almacenes AS a WHERE c.almacen = a.codigo;

/*--------------- 3.8 --------------*/
SELECT COUNT(c.num_referencia) AS `Cantidad de cajas`, c.almacen 
FROM cajas AS c JOIN almacenes AS a WHERE c.almacen=a.codigo
GROUP BY c.almacen; 

/*Falta el 3.9*/

/*--------------- 3.10 --------------*/
SELECT c.num_referencia, a.lugar
FROM cajas AS c JOIN almacenes as a ON c.almacen = a.codigo
HAVING a.lugar="Bilbao";

/*--------------- 3.11 --------------*/
INSERT INTO almacenes(lugar, capacidad) VALUES ("Barcelona", 3);

/*--------------- 3.12 --------------*/
INSERT INTO cajas(num_referencia, contenido, valor, almacen) VALUES
("H5RT", "Papel", 200, 2);

/*--------------- 3.13 --------------*/
UPDATE cajas SET valor = valor*0.85 WHERE num_referencia<>"9999";

/*Falta el 3.14*/

/*--------------- 3.15 --------------*/
DELETE FROM cajas WHERE valor<100 AND num_referencia<>'1234';

/* Falta el 3.16 */

