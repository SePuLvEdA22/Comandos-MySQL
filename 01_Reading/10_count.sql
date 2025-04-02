/* 
Cuenta el numero total de registros (filas) en la tabla users, 
incluyendo aquellos con valores nulos
*/
SELECT count(*) 
FROM users


/*
Cuenta el numero de registros de la tabla 'users'
donde la columna 'age' no es NULL
*/
SELECT count(age) 
FROM users