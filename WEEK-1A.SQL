CREATE DATABASE IF NOT EXISTS bookflow_db;
USE bookflow_db;

DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS members;

CREATE TABLE books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    isbn VARCHAR(13) NOT NULL UNIQUE,
    published_year INT,
    CONSTRAINT chk_published_year CHECK (published_year < 2027)
);

CREATE TABLE members(
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE
);

DESCRIBE members;

INSERT INTO books (title, isbn, published_year) VALUES
('The Alchemist', '9780061122415', 1988),
('Clean Code', '9780132350884', 2008),
('Atomic Habits', '9780735211292', 2018);

SELECT * FROM books;

INSERT INTO members (full_name, email) VALUES
('PRANEETH', 'praneeth0888@gmail.com'),
('VIDHATH', 'vidhath098@gmail.com'),
('RAGHUVEER', 'raghuveer@gmail.com');

SELECT * FROM members;
SELECT * FROM books;

CREATE TABLE students(
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL UNIQUE,
    student_phonenumber VARCHAR(12) NOT NULL UNIQUE
);

DESCRIBE students;

INSERT INTO students (full_name, student_phonenumber)
VALUES
('Praneeth', '9876543540'),
('Vidhath', '9123456789'),
('Raghuveer', '9988776655');

SHOW TABLES;

SELECT * FROM students;
