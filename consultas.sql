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
('1992-02-12', 'Fred', 'Smith', 'Male', 20000, 'El libro famoso', '1999-02-12'),
('1962-02-12', 'Claudia', 'Lauret', 'Female', 20000, 'El libro famoso', '2000-02-12'),
('1940-02-12', 'Lucas', 'Sierra', 'Male', 30000, 'El mono', '1999-02-12'),
('1982-02-12', 'Maria', 'Smith', 'Female', 20200, 'El gato', '1999-02-12'),
('1972-02-12', 'Laura', 'Smith', 'Female', 20300, 'Elso', '1999-02-12'),
('1962-02-12', 'Marcos', 'Smith', 'Male', 23000, 'Podrido', '2020-02-12'),
('1952-02-12', 'Javi', 'Smith', 'Male', 10000, 'El cura', '1999-02-12'),
('1991-02-12', 'Valeria', 'Smith', 'Female', 10300, 'Kuna', '1999-02-12'),
('1981-02-12', 'Pepa', 'Smith', 'Female', 15000, 'Eso', '1999-02-12'),
('1979-02-12', 'Pepe', 'Smith', 'Male', 20000, 'El dia que llovio', '1999-02-12'),
('1965-02-12', 'Sandra', 'Smith', 'Female', 30600, 'El perro', '1999-02-12'),
('1973-02-12', 'Sergio', 'Smith', 'Male', 10200, 'El famoso', '2020-02-12'),
('1987-02-12', 'Leila', 'Smith', 'Female', 24000, 'El libro', '2020-02-12'),
('1984-02-12', 'Miriam', 'Smith', 'Female', 28000, 'Mi loro', '2020-02-12'),
('1980-02-12', 'Leila', 'Smith', 'Female', 18000, 'Periquito', '2020-02-12'),
('1984-02-12', 'Miriam', 'Shhhrtymith', 'Female', 28000, 'Mi loro', '1999-02-12'),
('1980-02-12', 'Leila', 'Smiyytuuutrtuth', 'Female', 50000, 'Periquito', '1999-02-12');

select * from employees;

--  ACTUALIZAR DATOS

-- ⦁ Actualizar a los empleados:
-- ⦁ Cambiar el nombre de un empleado. 
-- Para ello, genere una consulta que afecte solo a un determinado empleado en función de su nombre, 
-- apellido y fecha de nacimiento.
select first_name, last_name, birth_date from employees where id = 20;

UPDATE employees SET first_name = 'Fredy' where id = 20;

--  Seleccione todos los empleados con un salario superior a 20.000
select first_name, last_name from employees where salary > 20000;

--  Seleccione todos los empleados con un salario inferior a 10.000
select first_name, last_name from employees where salary < 10000;

-- Seleccione todos los empleados que tengan un salario entre 14.000 y 50.000
select first_name, last_name from employees where salary between 14000 and 50000;

-- ⦁ Seleccione el número total de empleados
select count(id) from employees;

-- ⦁ Selecciona los títulos del año 2019
select title from employees WHERE title_date BETWEEN '2019-01-01' AND '2019-12-31';

-- ⦁ Seleccione solo el nombre de los empleados y que se vean en mayúscula
select UPPER(first_name) from employees;

-- ⦁ Seleccionar el nombre de los empleados sin que se repita ninguno
SELECT DISTINCT first_name FROM employees;

-- BORRAR DATOS
-- ⦁ Elimina el empleado con id = 5
DELETE FROM employees WHERE id = 5;

-- Eliminar a todos los empleados con un salario superior a 20.000
DELETE FROM employees WHERE salary > 20000;