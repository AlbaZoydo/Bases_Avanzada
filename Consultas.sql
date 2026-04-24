BEGIN;
/* Pregunta 2
INSERT INTO musicos.Grupos VALUES (1, 'One Republic', 'POP', 'Reino Unido', 'www.');

INSERT INTO musicos.Musicos VALUES (1, '1234567Q','Musico1', 'su casa', 98764, 'Londres', 'provincia', 975675329, 'voz', 1);
*/
/*
--pregunta 7
create user musico1 with password '1';
create user musico2 with password '2';
create user musico3 with password '3';
GRANT CONNECT ON DATABASE musicos2 TO musico1, musico2, musico3;
GRANT USAGE ON SCHEMA musicos TO musico1, musico2, musico3;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA musicos TO musico1, musico2, musico3;
*/
/*
--pregunta 12
INSERT INTO musicos.Grupos VALUES (1400, 'Amaral', 'POP', 'Esp', 'www.esp');
INSERT INTO musicos.Musicos VALUES (3, '1234241Q','Eva', 'su casa', 98764, 'Barcelona', 'Cataluna', 975675329, 'voz', 1400);
UPDATE musicos.musicos SET telefono =123456789 WHERE Cod_grupo=1400;
UPDATE musicos.Grupos SET Cod_grupo=1301 WHERE Cod_grupo=1400;
UPDATE musicos.Grupos SET Nombre='Heroes del silencio' WHERE Cod_grupo=1301;
*/
/*
--pregunta 13
INSERT INTO musicos.Grupos VALUES (5, 'kitkat', 'Jazz', 'Aleman', 'www.kikat.es'); 
INSERT INTO musicos.Musicos VALUES (5, '123456789X','Chocobon', 'Dublin', 23414, 'Dublin', 'Dublin' , 234567891, 'guitarra', 5); 
SELECT m.DNI, g.Nombre FROM musicos.grupos as g JOIN musicos.Musicos as m ON g.Cod_grupo = m.Cod_grupo WHERE g.Cod_grupo=5 AND m.Provincia='Dublin';
SELECT m.DNI, g.Nombre FROM musicos.grupos as g JOIN musicos.Musicos as m ON g.Cod_grupo = m.Cod_grupo WHERE g.Cod_grupo=1300 AND m.Provincia='Cantabria'; 
 
*/
--Pregunta 15
--Usuario1
SELECT C FROM musicos.VALORC;
UPDATE musicos.ValorC SET C=C/100;

SELECT A FROM musicos.ValorA;
UPDATE musicos.ValorA SET A=A+100;

UPDATE musicos.ValorC SET C=C-(SELECT A FROM musicos.ValorA);


--usuario2
SELECT B FROM musicos.ValorB;
UPDATE musicos.ValorB SET B=B+200;

SELECT C FROM musicos.VALORC;
UPDATE musicos.ValorC SET C=(SELECT B FROM musicos.ValorB)-C;

SELECT C FROM musicos.VALORC;
UPDATE musicos.ValorC SET C=(SELECT B FROM musicos.ValorB)*30;
--usuario3
SELECT A FROM musicos.ValorA;
--UPDATE musicos.ValorA SET A=A*20;

SELECT B FROM musicos.ValorB;
UPDATE musicos.ValorA SET A=(A*20)- (SELECT B FROM musicos.ValorB);

SELECT C FROM musicos.VALORC;
UPDATE musicos.ValorB SET B=(SELECT A FROM musicos.ValorA)*(SELECT C FROM musicos.VALORC);


COMMIT;