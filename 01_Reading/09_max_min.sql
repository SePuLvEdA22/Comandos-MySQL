-- Selecciona el valor maximo de la columna 'age' en la tabla 'users'.
SELECT max(age) FROM users 

/*
Define una CTE (Common Table Expression) para encontrar la edad maxima
y luego selecciona el nombre y edad de los usuarios con esa edad.
*/
WITH edad_maxima AS (
    -- Calcula la edad maxima y la almacena en una columna llamada 'edad'.
	SELECT max(age) AS edad
    FROM users
)
/*
Une la tabla 'users' con la CTE para obtener los nombres 
y las edades de los usuarios cuya edad coincide con la maxima.
*/
SELECT u.name, u.age
FROM users u, edad_maxima em
WHERE u.age = em.edad;


-- Selecciona el valor minimo de la columna 'age' en la tabla 'users'.
SELECT min(age) FROM users