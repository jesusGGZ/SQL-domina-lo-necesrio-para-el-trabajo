SELECT Mnomateria, Mnombre, Mcred,  Mnocarrera
FROM Materia
WHERE Mnocarrera = '32' AND Mcostolab > 100;

SELECT Mnomateria, Mnombre, Mcred,  Mnocarrera
FROM Materia
WHERE NOT Mnocarrera = '32';

SELECT * FROM materia WHERE (Mnocarrera = '32' AND Mcred = 8);