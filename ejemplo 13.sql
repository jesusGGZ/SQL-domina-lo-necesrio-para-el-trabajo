SELECT * FROM academic;
SELECT * FROM carrera;

SELECT Mnomateria, Mnombre, Mnocarrera, Cnombre FROM Materia, carrera
WHERE Cnocarrera = Mnocarrera;