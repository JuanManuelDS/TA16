/*--------- 4.1 -------------*/
SELECT nombre FROM peliculas;

/*--------- 4.2 -------------*/
SELECT calificacion_edad FROM peliculas GROUP BY calificacion_edad;

/*--------- 4.3-------------*/
SELECT nombre FROM peliculas WHERE calificacion_edad IS NULL;

/*--------- 4.4-------------*/
SELECT nombre FROM salas WHERE pelicula IS NULL;

/*--------- 4.5-------------*/
SELECT *
FROM salas s
LEFT JOIN peliculas p
ON s.pelicula = p.codigo;

/*--------- 4.6-------------*/
SELECT *
FROM peliculas p
LEFT JOIN salas s
ON s.pelicula = p.codigo;

/*--------- 4.7-------------*/
SELECT peliculas.nombre FROM peliculas WHERE codigo NOT IN (SELECT s.pelicula from salas s WHERE pelicula IS NOT NULL);

/*-------- 4.8 -----------*/
INSERT INTO peliculas(nombre, calificacion_edad) VALUES ("uno, dos, tres", 7);

/*-------- 4.9 -----------*/
UPDATE peliculas 
SET CALIFICACIONEDAD="PG-13"
WHERE CALIFICACIONEDAD IS NULL ;

/*-------- 4.10 -----------*/
DELETE FROM salas WHERE pelicula IN (SELECT CODIGO FROM peliculas WHERE CALIFICACIONEDAD like "G" OR CALIFICACIONEDAD like "PG");
