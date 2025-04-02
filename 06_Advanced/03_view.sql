create view v_adult_users as 
select name, age
from users
where age >= 18;

select * from v_adult_users
