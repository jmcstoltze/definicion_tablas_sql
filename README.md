# Instrucciones y contenido del proyecto "Peliculas"

Este proyecto contiene archivos relacionados con la gestión de una base de datos de películas, así como consultas SQL para realizar análisis sobre la misma.

## Archivos

- **setting.json**: Configuración para SQLTools, una herramienta de gestión de bases de datos, que define la conexión a la base de datos "peliculas". (Debe realizarse en el contexto de cada usuario en particular)
  
- **conexion.peliculas.sessions.sql**: Este archivo contiene un conjunto de consultas SQL para crear la base de datos "peliculas" y realizar diferentes tipos de consultas sobre las películas y el reparto.

- Resultado de las consultas en formato JSON.

- Un informe detallado que complementa las consultas SQL realizadas.

## Consultas SQL

Las consultas SQL en el archivo `conexion.peliculas.sessions.sql` están organizadas de la siguiente manera:

1. Creación de la base de datos y las tablas.
2. Consultas sobre la base de datos de películas, incluyendo búsqueda de películas por título, actores que participan en una película específica, conteo de películas en las que aparece un actor específico, etc.

## Uso

1. Configuración de la conexión a la base de datos: Asegúrate de configurar correctamente la conexión a la base de datos en el archivo `setting.json` antes de ejecutar las consultas SQL.
2. Ejecución de las consultas: Puedes ejecutar las consultas SQL en un cliente de base de datos compatible con PostgreSQL, como DBeaver, o a través de herramientas de línea de comandos como psql.

## Resultados

Los resultados de las consultas se encuentran en archivos .json, junto con un informe más detallado en formato PDF.

## Autor

Jose Contreras Stoltze
