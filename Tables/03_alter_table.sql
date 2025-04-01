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
alter table persons 
add surname varchar(100);

alter table persons
rename column surname to description;

alter table persons 
modify column description varchar(250);

alter table persons
drop column description;

-- Aniadir una foreing key
ALTER TABLE pedidos 
ADD CONSTRAINT fk_cliente
FOREIGN KEY (cliente_id) REFERENCES persons(id)
ON DELETE CASCADE;