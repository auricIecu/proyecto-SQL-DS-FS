SELECT * FROM users ORDER BY user_id; 
-- ordena los usuarios por id, de menor a mayor por defecto

SELECT * FROM users ORDER BY user_id ASC; 
-- los ordena de menor a mayor

SELECT * FROM users ORDER BY user_id DESC; 
-- los ordena de mayor a menor

SELECT * FROM users WHERE user_mail = "mariolopezclav@gmail.com" ORDER BY user_id DESC; 
-- seleccionamos los que tengan ese correo, pero con id descendente


SELECT * FROM Products
ORDER BY Price DESC, CategoryID ASC;
/* Ordenar según dos criterios */