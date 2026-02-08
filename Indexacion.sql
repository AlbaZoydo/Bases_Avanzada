/*Tabla 4, se pone como tabla 2 en el pdf*//*

CREATE TABLE pl1.estudiantes4 (
    estudiante_id TEXT,
    nombre TEXT,
    codigo_carrera INT,
    edad INT,
    indice INT
);
\COPY pl1.estudiantes4    FROM './Datos_tabla.csv' WITH (FORMAT csv, DELIMITER E',', NULL '\N', ENCODING 'UTF-8');

/*indice*/
CREATE INDEX idx_estudiantes4 ON pl1.estudiantes4 (indice ASC NULLS LAST);*/

/*indice arbol sobre estudiante_id*/
\echo 'Car'
CREATE INDEX idx_estudiantes4_est_id ON pl1.estudiantes4 (estudiante_id);
\echo 'Creado'

/*Indice de tipo HASH*/
CREATE INDEX idx_estudiantes4_hash ON pl1.estudiantes4 USING HASH (estudiante_id);

/*indice arblo sobre indice*/
-- Crear índice B-Tree sobre el campo 'indice'
CREATE INDEX idx_estudiantes4_indice ON pl1.estudiantes4 (indice);

/*indice HASH sobre indice*/
CREATE INDEX idx_estudiantes4_hash_in ON pl1.estudiantes2 USING HASH (indice);

/*
/*Ordeno*/
CLUSTER pl1.estudiantes4 USING idx_estudiantes4;*/
\echo 'Tabla'
SELECT * FROM pgstatindex('idx_estudiantes4_est_id');
COMMIT;
