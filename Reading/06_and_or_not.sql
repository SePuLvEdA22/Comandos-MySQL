/*
Selecciona todas las columnas de la tabla users 
donde el email NO termine en '@gmail.com'
*/
SELECT * 
FROM users
WHERE NOT email LIKE '%@gmail.com';

/*
Selecciona todas las columnas de la tabla users 
donde el email NO es igual 'silva@silva.com'
*/
SELECT * 
FROM users
WHERE NOT email = 'silva@silva.com';


/*
Selecciona todas las columnas de la tabla users
donde el email no es igual 'silva@silva.com' y la edad es 17.
*/
SELECT * 
FROM users
WHERE 
	NOT email = 'silva@silva.com'
    AND age = 17;


/*
Selecciona todas las columnas de la tabla users
donde el email no es igual 'silva@silva.com' o la edad es 22.
*/
SELECT * 
FROM users
WHERE 
	NOT email = 'silva@silva.com'
    OR age = 22;