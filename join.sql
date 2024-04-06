-- Create the database
CREATE DATABASE IF NOT EXISTS students_fees_info;

-- Switch to the newly created database
USE students_fees_info;

-- Create the students table
CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    date_of_birth DATE,
    address VARCHAR(100)
);

-- Insert sample data into students table
INSERT INTO students (student_id, student_name, date_of_birth, address) VALUES
(1, 'John Doe', '2000-05-15', '123 Main St'),
(2, 'Jane Smith', '2001-08-22', '456 Elm St'),
(3, 'Mike Johnson', '1999-11-10', '789 Oak St');

-- Create the fees table
CREATE TABLE IF NOT EXISTS fees (
    fee_id INT PRIMARY KEY,
    student_id INT,
    fee_amount DECIMAL(10, 2),
    payment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Insert sample data into fees table
INSERT INTO fees (fee_id, student_id, fee_amount, payment_date) VALUES
(1, 1, 500.00, '2024-03-10'),
(2, 2, 600.00, '2024-03-15'),
(3, 1, 550.00, '2024-04-05'),
(4, 3, 700.00, '2024-04-10');

-- INNER JOIN: Retrieve students and their fees
SELECT s.student_id, s.student_name, s.date_of_birth, s.address, f.fee_id, f.fee_amount, f.payment_date
FROM students s
INNER JOIN fees f ON s.student_id = f.student_id;

-- LEFT JOIN: Retrieve all students and their fees (including students without fees)
SELECT s.student_id, s.student_name, s.date_of_birth, s.address, COALESCE(f.fee_id, 'No Fee') AS fee_id, COALESCE(f.fee_amount, 0.00) AS fee_amount, COALESCE(f.payment_date, 'No Payment') AS payment_date
FROM students s
LEFT JOIN fees f ON s.student_id = f.student_id;

-- RIGHT JOIN: Retrieve all fees and their associated students (including fees without students)
SELECT f.fee_id, COALESCE(s.student_name, 'No Student') AS student_name, COALESCE(s.date_of_birth, 'No Date of Birth') AS date_of_birth, COALESCE(s.address, 'No Address') AS address, f.fee_amount, f.payment_date
FROM fees f
RIGHT JOIN students s ON f.student_id = s.student_id;
 


