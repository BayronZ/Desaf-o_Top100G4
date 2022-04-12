\c mrcoco
DROP DATABASE peliculas;
CREATE DATABASE peliculas;
\c peliculas;

CREATE TABLE peliculas(
    id SERIAL,
    Pelicula VARCHAR(100),
    Año_Estreno INT,
    Director VARCHAR,
    PRIMARY KEY(id)
);

SELECT * FROM peliculas;

\copy peliculas FROM 'peliculas.csv' csv header;

SELECT * FROM peliculas LIMIT 10;

CREATE TABLE reparto(
    id INT,
    Reparto VARCHAR(100),
    FOREIGN KEY (id) REFERENCES peliculas(id)
);

\copy reparto FROM 'reparto.csv' csv;

SELECT * FROM reparto LIMIT 10;

SELECT id AS ID FROM peliculas WHERE Pelicula = 'Titanic';

SELECT reparto from reparto WHERE id = 1;