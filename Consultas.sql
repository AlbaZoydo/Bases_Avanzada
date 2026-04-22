BEGIN;
/* Pregunta 2
INSERT INTO musicos.Grupos VALUES (1, 'One Republic', 'POP', 'Reino Unido', 'www.');

INSERT INTO musicos.Musicos VALUES (1, '1234567Q','Musico1', 'su casa', 98764, 'Londres', 'provincia', 975675329, 'voz', 1);
*/

--pregunta 7
create user musico1 with password '1';
create user musico2 with password '2';
create user musico3 with password '3';
GRANT CONNECT ON DATABASE MUSICOS2 TO musico1, musico2, musico3;
GRANT USAGE ON SCHEMA musicos TO musico1, musico2, musico3;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA musicos TO musico1, musico2, musico3;

--pregunta 12
INSERT INTO musicos.Grupos VALUES (1400, 'Amaral', 'POP', 'Esp', 'www.esp');
INSERT INTO musicos.Musicos VALUES (3, '1234241Q','Eva', 'su casa', 98764, 'Barcelona', 'Cataluna', 975675329, 'voz', 1400);
UPDATE musicos.musicos SET telefono =123456789 WHERE Cod_grupo=1400;
UPDATE musicos.Grupos SET Cod_grupo=1300 WHERE Cod_grupo=1400;
UPDATE musicos.Grupos SET Nombre='Heroes del silencio' WHERE Cod_grupo=1300;
COMMIT;