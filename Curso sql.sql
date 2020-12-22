select * from carrera; 
select Cnocarrera, Cnombre from carrera; 
select Cnombre, Cnocarrera from carrera; 

select mnombre, mcostolab, mcostolab*.10 from materia;
select mnombre, mcostolab, mcostolab*.10 as ayuda from materia;

select 'la materia', Mnombre, 'tiene', Mcred, 'creditos' from materia;

select distinct mnocarrera from materia;

--uso de where--
select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcostolab = 100;

select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcostolab < 100;

select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcostolab >= 100;

--Uso de BETWEEN--
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

--Predicado por correspondencia con patron LIKE--
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

--Predicados compuestos, operadores AND, OR y NOT--
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

-- --