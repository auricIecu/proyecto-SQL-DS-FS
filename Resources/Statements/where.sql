SELECT * FROM users WHERE user_age > 35; 
-- nos selecciona los usuarios mayores de 35 años

SELECT DISTINCT user_name FROM users WHERE user_age < 35;


SELECT * FROM Customers
WHERE Country <>'Mexico';

/* El <> es lo mismo que DISTINC */