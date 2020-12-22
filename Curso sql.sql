select * from carrera; 
select Cnocarrera, Cnombre from carrera; 
select Cnombre, Cnocarrera from carrera; 

select mnombre, mcostolab, mcostolab*.10 from materia;
select mnombre, mcostolab, mcostolab*.10 as ayuda from materia;

select 'la materia', Mnombre, 'tiene', Mcred, 'creditos' from materia;

select distinct mnocarrera from materia;

-- uso de where --
select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcostolab = 100;

select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcostolab < 100;

select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcostolab >= 100;

/* Uso de BETWEEN */
select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcostolab BETWEEN 100 AND 200;

select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcostolab <= 100 AND Mcostolab >= 200;

select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcostolab not BETWEEN 100 AND 200;

select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mnombre BETWEEN 'B' AND 'D';

--Uso de IN y NOT IN--
select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcred in (10, 8);

select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcred not in (10, 8);

select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcred <> 10 and Mcred <> 8;

-- Predicado por correspondencia con patron LIKE --
select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mnombre
like '%Maquina%';

select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mnombre
like '%M_quina%';

select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mnombre
not like '_i%';

select * from materia;

-- Predicados compuestos, operadores AND, OR y NOT --
SELECT Mnomateria, Mnombre, Mcred,  Mnocarrera
FROM Materia
WHERE Mnocarrera = '32' AND Mcostolab > 100;

SELECT Mnomateria, Mnombre, Mcred,  Mnocarrera
FROM Materia
WHERE NOT Mnocarrera = '32';

SELECT * FROM materia WHERE (Mnocarrera = '32' AND Mcred = 8);

--Uso de ORDER BY--
SELECT Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
FROM Materia
ORDER BY Mcostolab asc;

SELECT Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
FROM Materia
ORDER BY Mcostolab desc, Mnombre DESC;

SELECT Mnomateria, Mnombre, Mcostolab * 1.10
FROM Materia
ORDER BY 3; 

--Alias de tabas--
SELECT carrera.Cnocarrera, carrera.Cnombre
FROM carrera;

SELECT carrera.Cnocarrera, carrera.Cnombre
FROM carrera 
WHERE carrera.Cnocarrera ='32';

SELECT * FROM Materia;

SELECT M.Mnomateria, M.Mnombre 
FROM Materia M
WHERE M.Mnomateria = '0076';

-- Consultas padre/hijo --
SELECT * FROM academic;
SELECT * FROM carrera;

SELECT Mnomateria, Mnombre, Mnocarrera, Cnombre FROM Materia, carrera
WHERE Cnocarrera = Mnocarrera;

-- Uso de operador JOIN --
SELECT Mnomateria, Mnombre, Mnocarrera, Cnombre 
FROM Materia INNER JOIN carrera
ON Cnocarrera = Mnocarrera;

SELECT Gnomateria, Gnomaestro, Anombre
FROM Academic INNER JOIN Grupo
ON Anoemplead = Gnomaestro;

-- Uso de OUTER JOINS --
select * FROM materia;
select * FROM grupo;

SELECT Gnogrupo, Mnombre, Mcred
FROM Materia AS M INNER JOIN Grupo AS  G
ON M.Mnomateria = G.Gnomateria;

SELECT Gnogrupo, Mnombre, Mcred
FROM Grupo AS  G LEFT OUTER JOIN Materia AS M
ON M.Mnomateria = G.Gnomateria;

SELECT Gnogrupo, Mnombre, Mcred
FROM Grupo AS  G RIGHT OUTER JOIN Materia AS M
ON M.Mnomateria = G.Gnomateria;

-- JOIN con criterio de seleccion de fia --
SELECT Gnogrupo, Mnombre, Mcred, Mnocarrera
FROM Grupo AS  G RIGHT OUTER JOIN Materia AS M
ON M.Mnomateria = G.Gnomateria WHERE Mnocarrera =32;

SELECT Gnogrupo, Mnombre, Mcred, Mnocarrera, Cnombre
FROM Grupo AS  G RIGHT OUTER JOIN Materia AS M
INNER JOIN carrera ON  Mnocarrera = Cnocarrera
ON M.Mnomateria = G.Gnomateria WHERE Mnocarrera =32;

-- Combinacion de resultados de consulta union --
-- Seleccionar a todos los números y nombres de los maestros
SELECT Anoemplead numero, anombre nombre, 'A' tipo
FROM Academic
UNION
SELECT Enocuenta, Enombre, 'E'
from Estudian
ORDER BY nombre;

-- Las funciones de columna AVG, SUM, MAX, MIN
SELECT * FROM materia;
SELECT SUM(Mcostolab) FROM materia;
SELECT AVG(Mcostolab) FROM materia;
SELECT MAX(Mcostolab) FROM materia;
SELECT MIN(Mcostolab) FROM materia;

-- Eliminacion de fila duplicadas DISTINCT
SELECT COUNT(*) FROM materia WHERE Mnocarrera = 32;
SELECT DISTINCT Mnocarrera FROM materia;
SELECT count(DISTINCT Mnocarrera) FROM materia;

-- Consultas agrupadas, Clausula GROUP BY
SELECT mnocarrera, AVG(mcostolab)
FROM Materia
GROUP BY mnocarrera;

SELECT mnocarrera, AVG(mcostolab)
FROM Materia
WHERE  Mcred = 8
GROUP BY mnocarrera
ORDER BY Mnocarrera DESC;

SELECT * FROM materia where mcred =8 ;

SELECT Materia.mcred, materia.Mnocarrera, MAX(materia.mcostolab)
FROM materia
GROUP BY materia.mcred, materia.Mnocarrera;

-- Condiciones de busqueda de grupos ClaúsulaHAVING
SELECT mnocarrera, AVG(mcostolab)
FROM materia
group by Mnocarrera
HAVING AVG (Mcostolab) > 100;

SELECT mnocarrera, AVG(mcostolab)
FROM materia
WHERE Mcostolab > 0
group by Mnocarrera
HAVING AVG (Mcostolab) > 100;

-- Subconsultas
SELECT mnomateria, mnombre, mcostolab
FROM materia
WHERE mcostolab > (SELECT MIN(academic.Asueldo * .05)
FROM academic);

-- Test de pertenencia de un conjunto IN 
select anombre, asueldo
from academic
where anocarrera in
(select cnocarrera from carrera 
where cedificio = 'A501');

-- Test de existencia EXISTS
select gnogrupo, gnomaestro
from grupo
where exists
(select * from academic
where Anoemplead = gnomaestro);

select gnogrupo, gnomaestro
from grupo
where not exists
(select * from academic
where Anoemplead = gnomaestro);

-- subconsultas anidadas
select a.anoemplead, a.anombre
from academic a
where a.Anoemplead in 
(select c.Ccoord from carrera c
where c.cnocarrera in 
( select m.Mnocarrera from materia m
where m.mcred));

-- subconsultas en la clausula HAVING
