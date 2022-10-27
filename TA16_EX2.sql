SELECT apellidos FROM empleados;

SELECT apellidos FROM empleados GROUP BY apellidos;

SELECT * FROM empleados WHERE apellidos='Smith';

SELECT * FROM empleados WHERE apellidos='Smith' OR apellidos='Rogers';

SELECT * FROM empleados WHERE departamento=14;

SELECT * FROM empleados WHERE departamento=37 AND departamento=77;

SELECT * FROM empleados WHERE LEFT(apellidos,1)='P';

SELECT SUM(presupuesto) AS presupuesto_total FROM departamentos;

SELECT departamentos.nombre, COUNT(empleados.nombre) 
FROM empleados INNER JOIN departamentos WHERE departamentos.codigo = empleados.departamento
GROUP BY empleados.departamento;

SELECT empleados.*, departamentos.* 
FROM empleados INNER JOIN departamentos WHERE departamentos.codigo=empleados.departamento;

SELECT empleados.nombre, empleados.apellidos, departamentos.nombre, departamentos.presupuesto AS presupuesto_departamento
FROM empleados INNER JOIN departamentos WHERE departamentos.codigo=empleados.departamento
ORDER BY departamentos.nombre;

SELECT e.nombre, e.apellidos 
FROM empleados AS e JOIN departamentos WHERE departamentos.codigo=e.departamento
AND departamentos.presupuesto>60000;

SELECT nombre
FROM departamentos WHERE presupuesto>(SELECT AVG(presupuesto) FROM departamentos);

SELECT d.nombre
FROM departamentos AS d JOIN empleados AS e
WHERE d.codigo = e.departamento
GROUP BY e.departamento
HAVING 2<COUNT(e.departamento);

INSERT INTO departamentos(codigo, nombre, presupuesto) VALUES (11,"Calidad", 40000);
INSERT INTO empleados(nombre, apellidos, dni, departamento) VALUES ("Esther", "Vázquez", "89276109", 11);

UPDATE departamentos SET presupuesto = presupuesto*0.9 WHERE codigo>0;

UPDATE empleados SET departamento=14 WHERE departamento=77 AND dni<>'hola';

DELETE FROM empleados WHERE departamento=14 AND dni<>'hola';

TRUNCATE empleados;

FALTA EL ANTEÚLTIMO EJERCICIO!!!