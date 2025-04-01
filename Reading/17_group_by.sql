SELECT count(age), age 
FROM users
GROUP BY age;

SELECT age, count(age) AS cuenta_edades 
FROM
	users
WHERE 
	age >= 15
GROUP BY 
	age
ORDER BY
	age ASC;