-- 1:1
SELECT CONCAT(name, ' ', surname) AS nombre_completo, dni_number
FROM users 
INNER JOIN dni ON users.user_id = dni.user_id;

SELECT CONCAT(name, ' ', surname) AS nombre_completo, dni_number
FROM users 
INNER JOIN dni ON users.user_id = dni.user_id
WHERE surname is not null;

-- Al concatenar un varchar con un null, el resultado es null.
-- Por eso se usa el ifnull para que si surname es null, se le asigne un string vacío.
SELECT CONCAT(users.name,' ', ifnull(users.surname, '')) AS nombre_completo, dni_number
FROM users 
INNER JOIN dni ON users.user_id = dni.user_id


-- 1:N
SELECT companies.name, COUNT(users.user_id) total_empleados
FROM companies 
JOIN users 
    ON companies.company_id = users.company_id
GROUP BY companies.name;

select companies.name, count(users.user_id) total_empleados
from companies 
join users on companies.company_id = users.company_id
GROUP BY companies.name
ORDER BY total_empleados asc;


-- N:M
select users.name, count(user_languages.language_id) as total_lenguajes
from users
join user_languages on users.user_id = user_languages.user_id
GROUP BY users.name;


SELECT concat(users.name,' ', ifnull(surname, '')) as user_name, 
	   languages.name as language_name
from users
join user_languages 
	on users.user_id = user_languages.user_id
join languages 
	on user_languages.language_id = languages.language_id


-- total de personas que conocen al menos un lenguaje de programacion.
select count(DISTINCT u.name) total_personas
from users u
join user_languages ul
	on u.user_id = ul.user_id
join languages l
	on ul.language_id = l.language_id


-- lista de personas que conocen al menos un lenguaje de programacion.
select distinct u.name
from users u
join user_languages ul
    on u.user_id = ul.user_id
join languages l
    on ul.language_id = l.language_id


-- lista de personas que conocen mas de un lenguaje de programacion.
select u.name, count(ul.language_id) as total_lenguajes
from users u
join user_languages ul
	on u.user_id = ul.user_id
join languages l
	on ul.language_id = l.language_id
GROUP BY u.name 
HAVING total_lenguajes > 1
