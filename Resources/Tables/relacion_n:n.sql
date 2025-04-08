CREATE TABLE users_languages (
	users_language_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    language_id int,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (language_id) REFERENCES languages(language_id),
    UNIQUE (user_id, language_id)
);

/* Para establecer una relación n:n primero hay que crear las dos tablas que queremos relacionar: La tabla users y la tabla languages.
Hay que crear una tercera tabla intermedia que establece las relaciones (users_languages). Establecemos las propiedades y por último las
claves foráneas.
*/