-- Create database named 'payments'
CREATE DATABASE IF NOT EXISTS payments;

-- Switch to the 'payments' database
USE payments;

-- Create the Customers table
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    mode VARCHAR(50),
    city VARCHAR(100)
);

-- Insert sample data for 20 customers with Indian names and cities
INSERT INTO Customers (customer_id, customer_name, mode, city)
VALUES
    (1, 'Ramesh Kumar', 'Online', 'Mumbai'),
    (2, 'Priya Gupta', 'In-store', 'Delhi'),
    (3, 'Deepak Sharma', 'Online', 'Bangalore'),
    (4, 'Neha Singh', 'Online', 'Chennai'),
    (5, 'Amit Patel', 'In-store', 'Hyderabad'),
    (6, 'Sneha Shah', 'Online', 'Kolkata'),
    (7, 'Rajesh Verma', 'Online', 'Pune'),
    (8, 'Pooja Das', 'In-store', 'Ahmedabad'),
    (9, 'Ankit Singh', 'Online', 'Surat'),
    (10, 'Mona Jain', 'In-store', 'Jaipur'),
    (11, 'Suresh Tiwari', 'Online', 'Lucknow'),
    (12, 'Preeti Mishra', 'Online', 'Kanpur'),
    (13, 'Vivek Singh', 'In-store', 'Nagpur'),
    (14, 'Nisha Kapoor', 'Online', 'Indore'),
    (15, 'Rahul Yadav', 'Online', 'Thane'),
    (16, 'Ritu Sharma', 'In-store', 'Bhopal'),
    (17, 'Sanjay Gupta', 'Online', 'Visakhapatnam'),
    (18, 'Seema Kumar', 'Online', 'Patna'),
    (19, 'Rakesh Singh', 'In-store', 'Ludhiana'),
    (20, 'Neha Tiwari', 'Online', 'Agra');

-- View all records in the Customers table
SELECT * FROM Customers;

-- Count the number of customers in each mode (Online/In-store)
SELECT mode, COUNT(customer_id) AS num_customers
FROM Customers 
GROUP BY mode;

-- Count the number of customers in each city and order them by city name
SELECT city, COUNT(customer_id) AS num_customers
FROM Customers 
GROUP BY city
ORDER BY city;

-- Allow unsafe updates
SET SQL_SAFE_UPDATES=0;

-- Update city from 'Delhi' to 'Pune' (Example of updating records)
UPDATE Customers
SET city = 'Pune'
WHERE city = 'Delhi';

-- Restore safe updates
SET SQL_SAFE_UPDATES=1;

-- Delete records where city is 'Bangalore' (Example of deleting records)
DELETE FROM Customers WHERE city = 'Bangalore';

-- View all records in the Customers table after updates and deletions
SELECT * FROM Customers;
