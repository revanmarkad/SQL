-- Create a new database
CREATE DATABASE CarDatabase;

-- Switch to the newly created database
USE CarDatabase;

-- Create a table to store information about cars
CREATE TABLE Cars (
    car_id INT PRIMARY KEY AUTO_INCREMENT,
    model VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    company VARCHAR(255) NOT NULL,
    sport_mode BOOLEAN NOT NULL DEFAULT FALSE
);

-- Insert more information about cars into the Cars table
INSERT INTO Cars (model, price, company, sport_mode)
VALUES
    ('Toyota Camry', 25000.00, 'Toyota', FALSE),
    ('Honda Civic', 22000.00, 'Honda', FALSE),
    ('BMW M3', 65000.00, 'BMW', TRUE),
    ('Audi A4', 45000.00, 'Audi', FALSE),
    ('Mercedes-Benz C-Class', 50000.00, 'Mercedes-Benz', TRUE),
    ('Ford Mustang', 35000.00, 'Ford', TRUE),
    ('Chevrolet Camaro', 32000.00, 'Chevrolet', TRUE),
    ('Volkswagen Golf GTI', 28000.00, 'Volkswagen', TRUE),
    ('Lexus IS', 40000.00, 'Lexus', FALSE),
    ('Subaru WRX', 30000.00, 'Subaru', TRUE);
    
-- Add a new column named Color to the Cars table with a default value of 'Black'
ALTER TABLE Cars ADD COLUMN Color VARCHAR(43) DEFAULT 'Black';

-- Remove the Color column from the Cars table
ALTER TABLE Cars DROP COLUMN Color;

-- Retrieve all data from the Cars table
SELECT * FROM Cars;
