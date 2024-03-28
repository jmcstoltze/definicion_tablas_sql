
-- 1. Crea base de datos 'peliculas'
CREATE DATABASE peliculas;

-- 2.1 Crea la tabla reparto (importando csv en dbeaver)
CREATE TABLE public.peliculas (
	id int4 NULL,
	"Pelicula" varchar(64) NULL,
	"Año estreno" int4 NULL,
	"Director" varchar(50) NULL
);

-- 2.2 Crea la tabla reparto (importando csv en dbeaver)
CREATE TABLE public.reparto (
	id_pelicula int4 NULL,
	actor varchar(50) NULL
);

-- CONSULTAS:

-- 3. Obtener ID de la película "Titanic"
-- (Se complementa con el título)
SELECT id, "Pelicula"
FROM peliculas
WHERE "Pelicula" = 'Titanic';

-- 4. Listar a todos los actores que aparecen en la película Titanic
SELECT actor
FROM reparto
WHERE id_pelicula in (
        SELECT id
        FROM peliculas
        WHERE "Pelicula" = 'Titanic'
    );

-- 5. Consultar en cuántas de las películas top 100 participa Harrison Ford
SELECT COUNT(*) AS cantidad_peliculas
FROM peliculas
INNER JOIN reparto ON peliculas.id = reparto.id_pelicula
WHERE reparto.actor = 'Harrison Ford';

-- 6. Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.
SELECT "Pelicula",
    "Año estreno"
FROM peliculas
WHERE "Año estreno" BETWEEN 1990 AND 1999
ORDER BY "Pelicula" ASC;

-- 7. Mostrar los títulos con su longitud en columna 'longitud_titulo'
SELECT "Pelicula",
    LENGTH("Pelicula") AS "longitud_titulo"
FROM peliculas;

-- 8. Consultar la longitud más grande entre todos los títulos
-- (Se complementa con el título)
SELECT "Pelicula",
    LENGTH("Pelicula") AS "longitud_titulo"
FROM peliculas
ORDER BY "longitud_titulo" DESC
LIMIT 1;