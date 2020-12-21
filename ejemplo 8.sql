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