ALTER TABLE persons7
ADD surname varchar(150);
--Con ALTER modificamos la tabla. En este caso añadimos un nuevo 
--campom (surname) y establecemos que tenga una longitud de 150

ALTER TABLE persons7
RENAME COLUMN surname TO description;
/* renombramos la columna para que en vez de que se llame surname se llame description */

ALTER TABLE persons7
MODIFY COLUMN description varchar(250);
/* modificamos la columna para que tenga un varchar de 250 */

ALTER TABLE persons7
DROP COLUMN description;
/* eliminamos la columna description */