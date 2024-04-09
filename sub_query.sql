-- Create the database named 'company_data'
CREATE DATABASE IF NOT EXISTS company_data;

-- Use the database
USE company_data;

-- Create the 'employees' table
CREATE TABLE IF NOT EXISTS employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    department TEXT,
    salary INTEGER
);

-- Insert sample data into the 'employees' table
INSERT INTO employees (id,name, department, salary) VALUES 
    ('547','John', 'Sales', 50000),
    ('54','Alice', 'Marketing', 60000),
    ('615','Bob', 'Finance', 70000),
    ('624','Emma', 'Sales', 55000);

-- Create the 'departments' table
CREATE TABLE IF NOT EXISTS departments (
 
    name TEXT,
    location TEXT
);
drop table departments;
-- Insert sample data into the 'departments' table
INSERT INTO departments (name, location) VALUES 
    ('Sales', 'New York'),
    ('Marketing', 'Los Angeles'),
    ('Finance', 'Chicago');

-- Example of a subquery: Retrieve employees from the Sales department
SELECT name, salary 
FROM employees 
WHERE department = (
    SELECT name 
    FROM departments 
    WHERE location = 'New York'
);
