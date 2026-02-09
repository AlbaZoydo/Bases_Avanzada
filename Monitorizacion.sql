--tabla
CREATE TABLE pl1.estudiantes5 (
    estudiante_id TEXT,
    nombre TEXT,
    codigo_carrera INT,
    edad INT,
    indice INT
);
\COPY pl1.estudiantes5    FROM './Datos_tabla.csv' WITH (FORMAT csv, DELIMITER E',', NULL '\N', ENCODING 'UTF-8');
--Indices
CREATE INDEX idx_estudiantes5_indice ON pl1.estudiantes5 (indice);
CREATE INDEX idx_estudiantes5_cod_carre ON pl1.estudiantes5 (codigo_carrera);

CREATE INDEX idx_estudiantes5_hash_in ON pl1.estudiantes5 USING HASH (indice);
CREATE INDEX idx_estudiantes5_hash_est_id ON pl1.estudiantes5 USING HASH (estudiante_id);
--indice multiple 24
CREATE INDEX idx_estudiantes_multi ON pl1.estudiantes (indice, codigo_carrera);
ROLLBACK;