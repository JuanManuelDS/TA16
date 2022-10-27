SELECT * FROM almacenes;

SELECT * FROM cajas WHERE valor>150;

SELECT * FROM cajas GROUP BY contenido;

SELECT AVG(valor) AS `valor medio` FROM cajas;

SELECT AVG(valor), almacen AS `valor medio` FROM cajas GROUP BY almacen;

SELECT almacen FROM cajas GROUP BY almacen HAVING AVG(valor)>150;

SELECT c.num_referencia, a.lugar FROM cajas AS c, almacenes AS a WHERE c.almacen = a.codigo;

SELECT COUNT(c.num_referencia) AS `Cantidad de cajas`, c.almacen 
FROM cajas AS c JOIN almacenes AS a WHERE c.almacen=a.codigo
GROUP BY c.almacen; 

/*Falta el 3.9*/

SELECT c.num_referencia, a.lugar
FROM cajas AS c JOIN almacenes as a ON c.almacen = a.codigo
HAVING a.lugar="Bilbao";

INSERT INTO almacenes(lugar, capacidad) VALUES ("Barcelona", 3);

INSERT INTO cajas(num_referencia, contenido, valor, almacen) VALUES
("H5RT", "Papel", 200, 2);

UPDATE cajas SET valor = valor*0.85 WHERE num_referencia<>"9999";

/*Falta el 3.14*/

DELETE FROM cajas WHERE valor<100 AND num_referencia<>'1234';

 

SELECT * FROM cajas;

drop database TA16_EX3;