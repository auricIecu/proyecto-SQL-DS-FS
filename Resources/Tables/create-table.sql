CREATE TABLE persons (
	id int,
    name varchar(100),
    age int,
    email varchar(50),
    created date
);
--creamos la tabla personas

CREATE TABLE persons2 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created date
);
-- creamos una segunda tabla personas e indicamos las restircciones NOT NULL, es decir, no deja insertar un nuevo usuario cuyo id y nombre está vacío

CREATE TABLE persons3 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id)
);
--introducimos la restricción UNIQUE(el parámetro que queramos). 
--Esto hace que si dos usuarios se registran exactamente con los mismos datos cada uno tendrá un id único

CREATE TABLE persons4 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    PRIMARY KEY(id)
);
-- Hace que el campo primario sea el id

CREATE TABLE persons4 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id),
    PRIMARY KEY(id)
);
--Podemos hacer que la clave principal sea el id y que además cada nuevo dato tenga un id único

CREATE TABLE persons5 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);
--Añadimos la restricción CHECK, en este caso solo dejará introducir usuarios cuya edad sea igual o mayor a 18

CREATE TABLE persons6 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id)
);
--Con DEFAULT hacemos que la base de datos introduzca algo por defecto. 
-- En este caso CURRENT_TIMESTAMP generará una fecha de creación por defecto 

CREATE TABLE persons7 (
	id int NOT NULL AUTO_INCREMENT,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id)
);
-- Con uto_increment nos aseguramos que cada nuevo usuario tiene un id único y que según se vayan añadiendo usuarios, ese id
-- se incrementará
