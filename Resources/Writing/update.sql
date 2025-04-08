UPDATE users SET user_age = 3;
-- esto hará que todos los usuarios pasarán a tener 3 como edad

UPDATE users SET user_age = 3 WHERE user_id = 11;
-- hay que utilizar el WHERE para especificar a quién hay que cambiarle la edad

UPDATE users SET user_age = 25, init_date = "2018-05-04" WHERE user_id = 11;
-- añadimos la fecha, aunque sea un init, lo podemos pasar como un string