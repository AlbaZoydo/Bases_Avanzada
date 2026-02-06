BEGIN;
/*
CREATE SCHEMA IF NOT EXISTS pl1;
SET search_path TO pl1, public;
CREATE TABLE IF NOT EXISTS pl1.estudiantes(
        estudiante_id SERIAL,
        nombre TEXT,
        codigo_carrera int,
        edad int,
        indice int
);

\echo 'Cargando'
\COPY pl1.estudiantes    FROM './Datos_tabla.csv' WITH (FORMAT csv, HEADER, DELIMITER E',', NULL '\N', ENCODING 'UTF-8');

*/
CREATE SCHEMA IF NOT EXISTS pl1;
SET search_path TO pl1, public;
CREATE TABLE IF NOT EXISTS pl1.estudiantes2(
        estudiante_id TEXT,
        nombre TEXT,
        codigo_carrera int,
        edad int,
        indice int
);

\echo 'Cargando'
\COPY pl1.estudiantes2    FROM './Datos_tabla.csv' WITH (FORMAT csv, HEADER, DELIMITER E',', NULL '\N', ENCODING 'UTF-8');

CREATE INDEX id_ASC_indice ON pl1.estudiantes2 (indice ASC NULLS LAST);

CLUSTER estudiantes2 USING id_ASC_indice;




COMMIT;
