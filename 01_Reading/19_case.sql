select *, 
case
	when age > 18 
		then 'Es mayor de edad'
	when age = 18
		then 'Acaba de cumplir la mayoria de edad'
    else 'Es menor de edad'
end as ageText
from users;