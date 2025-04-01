/*
Selecciona todas las columnas de la tabla users donde el email no es 'silva@silva.com'
o la edad es 22, limitando el resultado a 1 registro.
*/
SELECT * 
FROM users
WHERE 
	NOT email = 'silva@silva.com'
    OR age = 22
LIMIT 1;