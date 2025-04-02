/*
Que hace: Devuelve todas las filas de la tabla izquierda (la primera mencionada) 
y las filas coincidentes de la tabla derecha. Si no hay coincidencias, 
retorna NULL para las columnas de la tabla derecha.

Funcionamiento: Prioriza la tabla izquierda, incluyendo todas sus filas, y busca coincidencias
en la tabla derecha. Si no encuentra nada, completa con valores nulos.
*/

-- Obtiene el nombre de todos los usuarios junto a su dni (lo tenga o no).
select u.name, ifnull(d.dni_number, 0) from users u
left join dni d 
    on u.user_id = d.user_id

-- Obtiene todos los dni junto al nombre de su usuario (lo tenga o no).
select u.name, d.dni_number from dni d
left join users u on u.user_id = d.user_id


-- Obtiene el nombre de todos los usuarios junto a sus lenguajes (los tenga o no)
SELECT users.name, languages.name
FROM users
LEFT JOIN users_languages ON users.user_id=users_languages.user_id
LEFT JOIN languages ON users_languages.language_id=languages.language_id;
