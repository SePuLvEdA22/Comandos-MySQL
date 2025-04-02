/*
Que hace: Devuelve todas las filas de ambas tablas, con coincidentes cuando las hay 
y null en las columnas de la tabla opuesta cuando no hay coincidencias.
Funcionamiento: Combina los efectos de LEFT JOIN y RIGHT JOIN, incluyendo todas las filas de ambas tablas.
*/
select 
	users.user_id as u_user_id,
    dni.user_id as d_user_id
from users
	left join dni
		on users.user_id = dni.user_id
union
select 
	users.user_id as u_user_id,
    dni.user_id as d_user_id
from users
	RIGHT JOIN dni
		on users.user_id = dni.user_id;