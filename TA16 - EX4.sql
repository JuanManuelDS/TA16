SELECT nombre FROM peliculas;

SELECT calificacion_edad FROM peliculas GROUP BY calificacion_edad;

SELECT nombre FROM peliculas WHERE calificacion_edad IS NULL;

SELECT nombre FROM salas WHERE pelicula IS NULL;

/*Este es el 4.5 mal resuelto*/
SELECT s.*, p.* FROM salas AS s, peliculas AS p WHERE s.pelicula = p.codigo;

/*Falta el 4.6, igual al 4.5 pero al revés*/

/*Falta el 4.7*/

INSERT INTO peliculas(nombre, calificacion_edad) VALUES ("uno, dos, tres", 7);

/*4.9*/

/*4.10*/