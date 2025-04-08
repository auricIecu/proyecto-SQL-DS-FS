SELECT MAX(user_age) FROM users GROUP BY user_age;
-- agrupa las edades máximas

SELECT COUNT(user_age) FROM users GROUP BY user_age;
-- cuenta el número de edades de los usuarios

SELECT COUNT(user_age), user_age FROM users GROUP BY user_age ASC;*
--los ordena de forma ascendente

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;
/*Agrupa las nacionalidades y cuenta el número de consumidores por cada país*/