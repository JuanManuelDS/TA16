/*---------- 2.1 -------------*/
SELECT apellidos FROM empleados;

/*---------- 2.2 -------------*/
SELECT apellidos FROM empleados GROUP BY apellidos;

/*---------- 2.3 -------------*/
SELECT * FROM empleados WHERE apellidos='Smith';

/*---------- 2.4 -------------*/
SELECT * FROM empleados WHERE apellidos='Smith' OR apellidos='Rogers';

/*---------- 2.5 -------------*/
SELECT * FROM empleados WHERE departamento=14;

/*---------- 2.6 -------------*/
SELECT * FROM empleados WHERE departamento=37 AND departamento=77;

/*---------- 2.7 -------------*/
SELECT * FROM empleados WHERE LEFT(apellidos,1)='P';

/*---------- 2.8 -------------*/
SELECT SUM(presupuesto) AS presupuesto_total FROM departamentos;

/*---------- 2.9 -------------*/
SELECT departamentos.nombre, COUNT(empleados.nombre) 
FROM empleados INNER JOIN departamentos WHERE departamentos.codigo = empleados.departamento
GROUP BY empleados.departamento;

/*---------- 2.10 -------------*/
SELECT empleados.*, departamentos.* 
FROM empleados INNER JOIN departamentos WHERE departamentos.codigo=empleados.departamento;

/*---------- 2.11 -------------*/
SELECT empleados.nombre, empleados.apellidos, departamentos.nombre, departamentos.presupuesto AS presupuesto_departamento
FROM empleados INNER JOIN departamentos WHERE departamentos.codigo=empleados.departamento
ORDER BY departamentos.nombre;

/*---------- 2.12 -------------*/
SELECT e.nombre, e.apellidos 
FROM empleados AS e JOIN departamentos WHERE departamentos.codigo=e.departamento
AND departamentos.presupuesto>60000;

/*---------- 2.13 -------------*/
SELECT nombre
FROM departamentos WHERE presupuesto>(SELECT AVG(presupuesto) FROM departamentos);

/*---------- 2.14 -------------*/
SELECT d.nombre
FROM departamentos AS d JOIN empleados AS e
WHERE d.codigo = e.departamento
GROUP BY e.departamento
HAVING 2<COUNT(e.departamento);

/*---------- 2.15 -------------*/
INSERT INTO departamentos(codigo, nombre, presupuesto) VALUES (11,"Calidad", 40000);
INSERT INTO empleados(nombre, apellidos, dni, departamento) VALUES ("Esther", "Vázquez", "89276109", 11);

/*---------- 2.16 -------------*/
UPDATE departamentos SET presupuesto = presupuesto*0.9 WHERE codigo>0;

/*---------- 2.17 -------------*/
UPDATE empleados SET departamento=14 WHERE departamento=77 AND dni<>'hola';

/*---------- 2.18 -------------*/
DELETE FROM empleados WHERE departamento=14 AND dni<>'hola';

/*Falta el 2.19 */

/*---------- 2.20 -------------*/
TRUNCATE empleados;

