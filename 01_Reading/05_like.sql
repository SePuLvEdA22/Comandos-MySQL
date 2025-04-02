-- Selecciona todas las columnas de 'user' donde el email termina en '@gmail.com'
SELECT * 
FROM users
WHERE email LIKE '%@gmail.com';

-- Selecciona todas las columnas de 'user' donde el email comienza con 'helger'
SELECT * 
FROM users
WHERE email LIKE 'helger%';

-- Selecciona todas las columnas de 'user' donde el email contiene '@' en cualquier posicion.
SELECT * 
FROM users
WHERE email LIKE '%@%';