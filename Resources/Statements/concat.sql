SELECT CONCAT(user_name, user_surname) FROM users;
-- selecciona a los usuarios y concatena el nombre y el apellido

SELECT CONCAT("Nombre: ", user_name, " Apellidos: ", user_surname) FROM users
-- concatena las propiedades poniendo delante lo que nosotros 

SELECT CONCAT("Nombre: ", user_name, " Apellidos: ", user_surname) AS "Nombre completo" FROM users
-- Añadimos el AS para que apareza en la tabla "Nombre completo"