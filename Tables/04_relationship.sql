-- 1:1
create table dni (
	dni_id INT PRIMARY KEY,
    dni_number INT NOT NULL UNIQUE,
    user_id INT,
    FOREIGN KEY(user_id) REFERENCES users(user_id)
)

-- 1:N
create table companies (
	company_id INT PRIMARY KEY,
    name VARCHAR(120) NOT NULL
);

alter table users 
add company_id INT;

alter table users
add CONSTRAINT fk_companies
FOREIGN KEY (company_id) REFERENCES companies(company_id);


-- N:N
create table languages (
	language_id serial primary key,
    name varchar(100) not null
);

alter table languages
MODIFY COLUMN language_id int;

create table user_languages (
	user_language_id serial primary key,
    user_id int,
    language_id int,
    foreign key(user_id) references users(user_id),
    foreign key(language_id) references languages(language_id),
    unique(user_id, language_id)
);