-- 1:1
CREATE TABLE dni (
	dni_id INT PRIMARY KEY,
    dni_number INT NOT NULL UNIQUE,
    user_id INT,
    FOREIGN KEY(user_id) REFERENCES users(user_id)
)

-- 1:N
CREATE TABLE companies (
	company_id INT PRIMARY KEY,
    name VARCHAR(120) NOT NULL
);

alter TABLE users 
add company_id INT;

alter TABLE users
add CONSTRAINT fk_companies
FOREIGN KEY (company_id) REFERENCES companies(company_id);


-- N:N
CREATE TABLE languages (
	language_id serial primary key,
    name varchar(100) not null
);

alter TABLE languages
MODIFY COLUMN language_id int;

CREATE TABLE user_languages (
	user_language_id serial primary key,
    user_id int,
    language_id int,
    FOREIGN KEY(user_id) references users(user_id),
    FOREIGN KEY(language_id) references languages(language_id),
    unique(user_id, language_id)
);