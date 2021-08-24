CREATE DATABASE users;
USE users;
#creating the table
CREATE TABLE user_reg(
user_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(40) NOT NULL,
email VARCHAR(60) NOT NULL,
pass CHAR(128) NOT NUll,
registration_date DATETIME NOT NULL,
PRIMARY KEY(user_id)
);

SHOW TABLES;

SHOW COLUMNS IN user_reg;

INSERT INTO user_reg (first_name,last_name, email, pass, registration_date)
VALUES ('John', 'Smith', 'jsmith@gmail.com', SHA2('js1234', 512), '2018-07-05'); 
#inserting information to second table
INSERT INTO user_reg
VALUES(2,'Mike', 'Jackson','MJ@gamil.com', SHA2('mj1234',512), NOW());

#selecting first name from the table
SELECT first_name FROM user_reg;

#selecting all the table
SELECT * FROM user_reg;

#selecting a certain entry from table 
SELECT * FROM user_reg WHERE user_id=1; 