/*--------- 4.1 -------------*/
SELECT nombre FROM peliculas;

/*--------- 4.2 -------------*/
SELECT calificacion_edad FROM peliculas GROUP BY calificacion_edad;

/*--------- 4.3-------------*/
SELECT nombre FROM peliculas WHERE calificacion_edad IS NULL;

/*--------- 4.4-------------*/
SELECT nombre FROM salas WHERE pelicula IS NULL;

/*Falta el 4.5 */

/*Falta el 4.6*/

/*Falta el 4.7*/

/*-------- 4.8 -----------*/
INSERT INTO peliculas(nombre, calificacion_edad) VALUES ("uno, dos, tres", 7);

/*Falta el 4.9*/

/*Falta el 4.10*/