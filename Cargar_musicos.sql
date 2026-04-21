CREATE SCHEMA IF NOT EXISTS musicos;
SET search_path TO musicos, public;

CREATE TABLE IF NOT EXISTS musicos.Grupos (
    Cod_grupo INTEGER PRIMARY KEY,
    Nombre TEXT NOT NULL,
    Genero TEXT NOT NULL,
    Pais TEXT NOT NULL,
    Webb TEXT NOT NULL
    
);

CREATE TABLE IF NOT EXISTS musicos.Musicos (
    Codigo_musico INTEGER PRIMARY KEY,
    DNI TEXT NOT NULL,
    Nombre TEXT NOT NULL,
    Direccion TEXT NOT NULL,
    Cod_postal INTEGER NOT NULL,
    Ciudad TEXT NOT NULL,
    Provincia TEXT NOT NULL,
    telefono INTEGER NOT NULL,
    Instrumentos TEXT NOT NULL,
    Cod_grupo INTEGER NOT NULL,
    FOREIGN KEY (Cod_grupo) REFERENCES musicos.Grupos(Cod_grupo)
);


CREATE TABLE IF NOT EXISTS musicos.Discos (
    Cod_disco INTEGER PRIMARY KEY,
    Titulo TEXT NOT NULL,
    Fecha DATE NOT NULL,
    Genero TEXT NOT NULL,
    Formato TEXT NOT NULL,
    Cod_grupo INTEGER NOT NULL,
    FOREIGN KEY (Cod_grupo) REFERENCES musicos.Grupos(Cod_grupo)
);

CREATE TABLE IF NOT EXISTS musicos.Canciones (
    Cod_cancion SERIAL PRIMARY KEY,
    Nombre TEXT NOT NULL,
    Compositor TEXT NOT NULL,
    Fecha_grabacion DATE NOT NULL,
    Duracion TIME NOT NULL,
    Cod_disco INTEGER NOT NULL,
    FOREIGN KEY (Cod_disco) REFERENCES musicos.Discos(Cod_disco)
);


CREATE TABLE IF NOT EXISTS musicos.Conciertos (
    Cod_concierto INTEGER PRIMARY KEY,
    Fecha DATE NOT NULL,
    Pais TEXT NOT NULL,
    Ciudad TEXT NOT NULL,
    Recinto TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS musicos.Relacion_grupo_concierto (
    Cod_grupo INTEGER,
    Cod_concierto INTEGER,
    PRIMARY KEY (Cod_grupo, Cod_concierto),
    FOREIGN KEY (Cod_grupo) REFERENCES musicos.Grupos(Cod_grupo),
    FOREIGN KEY (Cod_concierto) REFERENCES musicos.Conciertos(Cod_concierto)
);

CREATE TABLE IF NOT EXISTS musicos.Entradas (
    Cod_entrada INTEGER PRIMARY KEY,
    Localidad TEXT NOT NULL,
    Precio numeric NOT NULL,
    Usuario TEXT NOT NULL,
    Cod_concierto INTEGER NOT NULL,
    FOREIGN KEY (Cod_concierto) REFERENCES musicos.Conciertos(Cod_concierto)
);

COMMIT;