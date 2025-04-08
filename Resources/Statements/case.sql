 SELECT *,
CASE
	WHEN user_age >= 18 THEN "Es mayor de edad"
    ELSE "Es menor de edad"
END AS agetest
FROM users;

--seleccionamos un CASO en el que los usuarios son mayores de 18 años

 SELECT *,
CASE
	WHEN user_age >= 18 THEN TRUE
    ELSE "Es menor de edad"
END AS "Es mayor de edad"
FROM users;

--en la columna "Es mayor de edad" nos saldrá 1 porque true es igual a 1; 