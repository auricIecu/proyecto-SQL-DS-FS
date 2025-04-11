
--QUERIES PARA COMPROBAR EL FUNCIONAMIENTO DE LA BASE DE DATOS 


--QUERY1 : Observar la distribución general
SELECT
count(id_alumno)as nalumnos,
t3.ciudad as ciudad,
t5.modo as modalidad,
t4.curso
from alumnos t1
inner join grupo t2 on t2.id_grupo = t1.id_grupo
inner join campus t3 on t2.id_campus = t3.id_campus
inner join vertical t4 on t4.id_vertical = t2.id_vertical
inner join modalidad t5 on t5.id_modalidad = t2.id_modalidad
group by 2,3,4;

--QUERY 2: Aprobados por profesor

--Cuantos aprobados tiene cada profesor contando todos los proyectos

select 
t1.nombre as profesor,
count(t4.nota)as Naprobados
from profesores t1
inner join grupo t2 on t2.id_grupo = t1.id_grupo
inner join alumnos t3 on t3.id_grupo = t2.id_grupo
inner join calificaciones t4 on t4.id_alumno = t3.id_alumno
where nota = 'Apto'
group by 1
order by 2 desc;

-- QUERY 3 : datos de aprobado/ suspenso por modalidad

SELECT 
    --Datos de los Online
    (SELECT COUNT(t2.nota)
     FROM alumnos t1
     INNER JOIN calificaciones t2 ON t1.id_alumno = t2.id_alumno
     INNER JOIN proyecto t3 ON t3.id_proyecto = t2.id_proyecto
     INNER JOIN grupo t4 ON t1.id_grupo = t4.id_grupo
     INNER JOIN modalidad t5 ON t4.id_modalidad = t5.id_modalidad
     WHERE t2.nota = 'No apto' AND t5.modo = 'Online') AS NsuspensosOnline,
    
    (SELECT COUNT(t2.nota)
     FROM alumnos t1
     INNER JOIN calificaciones t2 ON t1.id_alumno = t2.id_alumno
     INNER JOIN proyecto t3 ON t3.id_proyecto = t2.id_proyecto
     INNER JOIN grupo t4 ON t1.id_grupo = t4.id_grupo
     INNER JOIN modalidad t5 ON t4.id_modalidad = t5.id_modalidad
     WHERE t5.modo = 'Online') AS NnotasOnline,
	 --Datos para los Presencial
    (SELECT COUNT(t2.nota)
     FROM alumnos t1
     INNER JOIN calificaciones t2 ON t1.id_alumno = t2.id_alumno
     INNER JOIN proyecto t3 ON t3.id_proyecto = t2.id_proyecto
     INNER JOIN grupo t4 ON t1.id_grupo = t4.id_grupo
     INNER JOIN modalidad t5 ON t4.id_modalidad = t5.id_modalidad
     WHERE t2.nota = 'No apto' AND t5.modo = 'Presencial') AS NsuspensosPresencial,
    
    (SELECT COUNT(t2.nota)
     FROM alumnos t1
     INNER JOIN calificaciones t2 ON t1.id_alumno = t2.id_alumno
     INNER JOIN proyecto t3 ON t3.id_proyecto = t2.id_proyecto
     INNER JOIN grupo t4 ON t1.id_grupo = t4.id_grupo
     INNER JOIN modalidad t5 ON t4.id_modalidad = t5.id_modalidad
     WHERE t5.modo = 'Presencial') AS NnotasPresencial;

-- QUERY 4: Cuántos alumnos suspendieron el hundir la flota y de qué campus eran

select 
t1.nombre_proyecto,
count(t3.id_alumno)as Nalumnos,
t5.ciudad
from proyecto t1
inner join calificaciones t2 on t1.id_proyecto = t2.id_proyecto
inner join alumnos t3 on t2.id_alumno = t3.id_alumno
inner join grupo t4 on t4.id_grupo = t3.id_grupo
inner join campus t5 on t5.id_campus = t4.id_campus
where t1.nombre_proyecto = 'Proyecto_HLF' and t2.nota = 'No apto'
group by 1,3;
 