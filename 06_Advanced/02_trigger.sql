delimiter |
create trigger tg_email
after update on users
for each row
begin 
	if old.email <> new.email then
		insert into email_history (user_id, email)
		values (old.user_id, old.email);
	end if;
end;

| 

delimiter
;

drop trigger tg_email