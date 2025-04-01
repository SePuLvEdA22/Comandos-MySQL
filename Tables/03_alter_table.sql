CREATE TABLE persons (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT, 
    email VARCHAR(50),
    created DATETIME DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY (id),
    CHECK(age > 18)
);

-- Modificaremos la tabla creada anteriormente.
ALTER TABLE persons 
ADD surname VARCHAR(100);

ALTER TABLE persons
rename column surname to description;

ALTER TABLE persons 
MODIFY column description VARCHAR(250);

ALTER TABLE persons
DROP column description;

-- Aniadir una foreing key
alter table users
add constraint fk_companies
foreign key(company_id) references companies(company_id)

ALTER TABLE dni
MODIFY column dni_id INT auto_increment;

ALTER TABLE dni
MODIFY column user_id INT UNIQUE;

ALTER TABLE users
DROP FOREIGN KEY fk_companies;