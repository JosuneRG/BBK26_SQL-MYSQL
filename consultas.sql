-- 1 - Abrir cmd poner esta ruta: cd "C:\Program Files\MySQL\MySQL Server 8.0\bin"
-- 2 - Poner este comando: mysql -u root -p

CREATE DATABASE my_company_database;

USE my_company_database;    

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    birth_date DATE,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL
);

SHOW TABLES;

SHOW COLUMNS FROM employees;

-- Añade 3 columnas nuevas a la tabla:
-- Columna "salary"
-- Columna "title"
-- Columna "title_date"(fecha)
ALTER TABLE employees ADD salary INTEGER(8);
ALTER TABLE employees ADD title VARCHAR(100);
ALTER TABLE employees ADD title_date DATE;

INSERT INTO employees (
    birth_date, first_name, last_name, gender, salary, title, title_date
) VALUES
('1992-02-12', 'Fred', 'Smith', 'Male', 2000, 'El libro famoso', '1999-02-12'),
('1962-02-12', 'Claudia', 'Lauret', 'Female', 2000, 'El libro famoso', '2000-02-12');
