SELECT * FROM users WHERE user_mail IS NULL 
-- selecciona a los usuarios cuyo email es nulo

SELECT * FROM users WHERE user_mail IS NOT NULL 
-- selecciona usuarios cuyo email no es nulo

SELECT user_name, user_surname, IFNULL(user_age, 0) FROM users;
-- si hay usuarios cuya edad es nula, le asigna una edad 0