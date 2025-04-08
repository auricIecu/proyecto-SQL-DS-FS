SELECT * FROM "nombre de la tabla"; 
-- seleccionamos todos los datos de la tabla / hay que terminar la sentencia con ;

SELECT user_name FROM users; 
-- accedemos a solo los nombres

SELECT user_id, user_name FROM users;
-- seleccionamos los usuarios que tienen id y nombre

SELECT DISTINCT Country FROM Customers;
/* seleccionamos valores distintos (en este caso países únicos) */