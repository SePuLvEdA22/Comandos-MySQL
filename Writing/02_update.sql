UPDATE users 
SET 
	age = 21, 
    email = 'camiQuintero@outlook.com'
WHERE user_id = 7;

UPDATE users 
SET 
	age = 21
WHERE user_id = 7;

UPDATE users 
SET company_id = 1
WHERE user_id IN (1, 5);