create index idx_name on users(name);
select * from users where name = 'helger'


create unique index idx_name on users(name);


create unique index idx_name_surname on users(name, surname);


drop index idx_name on users