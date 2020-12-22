SELECT Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
FROM Materia
ORDER BY Mcostolab asc;

SELECT Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
FROM Materia
ORDER BY Mcostolab desc, Mnombre DESC;

SELECT Mnomateria, Mnombre, Mcostolab * 1.10
FROM Materia
ORDER BY 3; 