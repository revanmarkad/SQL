-- Create a new database for students
CREATE DATABASE IF NOT EXISTS StudentDatabase;

-- Switch to the newly created database
USE StudentDatabase;

-- Create a table to store student information
CREATE TABLE IF NOT EXISTS Students (
    roll_num VARCHAR(10) PRIMARY KEY,
    name VARCHAR(255),
    grade CHAR(1),
    marks INT,
    age INT,
    branch VARCHAR(50) DEFAULT 'MCA',
    passed_year INT DEFAULT 2025
);

-- Insert data for 10 students
INSERT INTO Students (roll_num, name, grade, marks, age)
VALUES
    ('GHRUA901', 'John Doe', 'A', 85, 23),
    ('GHRUA902', 'Jane Smith', 'B', 75, 24),
    ('GHRUA903', 'Alice Johnson', 'A', 90, 22),
    ('GHRUA904', 'Bob Williams', 'B', 78, 25),
    ('GHRUA905', 'Charlie Brown', 'C', 65, 23),
    ('GHRUA906', 'David Lee', 'A', 92, 24),
    ('GHRUA907', 'Emily Davis', 'B', 80, 22),
    ('GHRUA908', 'Fiona Moore', 'A', 88, 25),
    ('GHRUA909', 'George Taylor', 'C', 68, 23),
    ('GHRUA910', 'Hannah Clark', 'B', 79, 24);

ALTER TABLE Students RENAME COLUMN name to Full_name;

SET SQL_SAFE_UPDATES=0;

DELETE FROM Students WHERE marks<80;

ALTER TABLE Students DROP COLUMN grade;
-- Display all student records
SELECT * FROM Students;
