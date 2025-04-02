/*
Que hace: Devuelve todas las filas de la tabla derecha (la segunda mencionada)
y las filas coincidentes de la tabla izquierda. Si no hay coincidencias,
devuelve null para las columnas de la tabla izquierda.

Funcionamiento: Es el opuesto al LEFT JOIN. Prioriza la tabla derecha.
*/
-- Obtiene todos los dni junto al nombre de su usuario (lo tenga o no).
select users.name, dni.dni_number
from users
RIGHT JOIN dni 
	ON users.user_id = dni.user_id


-- Obtiene el nombre de todos los usuarios junto a su dni (lo tenga o no)
SELECT name, dni_number FROM dni
RIGHT JOIN users
ON users.user_id = dni.user_id;


-- Obtiene el nombre de todos los lenguajes junto a sus usuarios (los tenga o no)
SELECT users.name, languages.name
FROM users
RIGHT JOIN user_languages ON users.user_id=user_languages.user_id
RIGHT JOIN languages ON user_languages.language_id=languages.language_id;