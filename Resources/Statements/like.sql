SELECT * FROM users WHERE user_mail LIKE "%gmail.com"; 
-- importante el %. seleccionamos los que tienen algo (%) seguido de gmail

SELECT * FROM users WHERE user_mail LIKE "%@%"; 
-- seleccionamos todo lo que tenga "algo" por delante del @ y "algo" por detrás del @