use yale_technical_interview;

CREATE TABLE PERSON (
person_id int(10) NOT NULL,
first_name varchar(100),
preferred_first_name varchar(100),
last_name varchar(100) NOT NULL,
date_of_birth DATE,
hire_date DATE,
occupation varchar(100),
PRIMARY KEY(person_id)
);


CREATE TABLE ADDRESS (
address_id int(10) NOT NULL,
person_id int(10) NOT NULL,
address_type varchar(4) NOT NULL,
street_line_1 varchar(100),
city varchar(100),
state varchar(100),
zip_code varchar(30),
PRIMARY KEY(address_id),
FOREIGN KEY(person_id) REFERENCES PERSON(person_id)
);

-- Question 1



-- QUESTION 2
SELECT * FROM yale_technical_interview.person
WHERE occupation = NULL;

-- Question 3
SELECT * FROM yale_technical_interview.person 
WHERE date_of_birth < '1990-08-07';

-- Question 4
SELECT * FROM yale_technical_interview.person 
WHERE date_of_birth < '1990-08-07';

-- QUESTION 5
SELECT * FROM yale_technical_interview.person WHERE person_id IN 
   (SELECT address_id FROM address WHERE address_type = "HOME");

-- QUESTION 6


-- QUESTION 7


-- QUESTION 8


-- QUESTION 9

   
   