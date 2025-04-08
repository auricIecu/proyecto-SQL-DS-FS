SELECT * FROM users WHERE NOT user_mail = "mariolopezclav@gmail.com"; 
-- seleccinará a los usuarios cuyo correo no es mariolopezclav@gmail.com

SELECT * FROM users WHERE NOT user_mail = "mariolopezclav@gmail.com" AND user_age = 32; 
--selecciona a los usuarios que no tienen ese correo y que además su edad es 32

SELECT * FROM users WHERE  NOT user_mail = "mariolopezclav@gmail.com" OR user_age = 32; 
-- selecciona a los usuarios que no tienen ese correo o que tienen 32 años

