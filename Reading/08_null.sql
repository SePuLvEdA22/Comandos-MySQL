-- Selecciona todas las columnas de la tabla users donde el email es NULL (Valor ausente).
SELECT * 
FROM users 
WHERE email IS NULL

-- Selecciona todas las columnas de la tabla users donde el email NO es NULL (Valor ausente).
select * 
FROM users 
WHERE email IS NOT NULL

select name, surname, ifnull(age, 0) as age
from users