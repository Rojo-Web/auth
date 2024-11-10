CREATE USER 'auth_user'@'localhost' IDENTIFIED BY 'Auth123';

CREATE DATABASE auth;
GRANT ALL PRIVILEGES ON auth.* TO  'auth_user'@'localhost';

USE auth;

CREATE TABLE users (
    id INT NOT NULL auto_increment PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

INSERT INTO users(email,password) VALUES ('santi@email.com','Admin123')