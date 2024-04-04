-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS mca;

-- Switch to the newly created database
USE mca;

-- Create table mcaFy2023 if it doesn't exist
CREATE TABLE IF NOT EXISTS mcaFy2023 (
    name VARCHAR(50),
    id INT PRIMARY KEY,
    city VARCHAR(50),
    college VARCHAR(50)
);

-- Insert data into mcaFy2023 table
INSERT INTO mcaFy2023 (name, id, city, college)
VALUES
    ('Sachin Birajdar', 1, 'Pune', 'G H Raisoni Amravati'),
    ('Govind Haikwad', 2, 'Hingoli', 'G H Raisoni Amravati'),
    ('Amey Ghadge', 3, 'Pune', 'G H Raisoni Amravati'),
    ('Kanan Gulati', 4, 'Delhi', 'G H Raisoni Amravati'),
    ('Nishant Jaiswal', 5, 'Nashik', 'G H Raisoni Amravati'),
    ('Vaishnavi Jambe', 6, 'Pune', 'G H Raisoni Amravati'),
    ('Anurag Jamankar', 7, 'Yavtmal', 'G H Raisoni Amravati'),
    ('Chaitrali Kadam', 8, 'Pune', 'G H Raisoni Amravati'),
    ('Revannath Markad', 9, 'AhilyaNagar', 'G H Raisoni Amravati'),
    ('Sainath Markad', 10, 'AhilyaNagar', 'G H Raisoni Amravati'),
    ('Sanika Nipankar', 11, 'Nagpur', 'G H Raisoni Amravati'),
    ('Abhishek Shinde', 12, 'Jalna', 'G H Raisoni Amravati'),
    ('Zaid Syed', 14, 'Akola', 'G H Raisoni Amravati'),
    ('Aniket Kale', 15, 'Satara', 'G H Raisoni Amravati');

-- Select specific columns from mcaFy2023 table
SELECT name, city FROM mcaFy2023;

-- Select all columns from mcaFy2023 table
SELECT * FROM mcaFy2023;   

-- Select distinct cities from mcaFy2023 table
SELECT DISTINCT city from mcaFy2023;

-- Select all columns from mcaFy2023 table where city is 'Pune'
select * from mcaFy2023 where city='Pune';

-- Select all columns from mcaFy2023 table and order by city in ascending order
select * from mcaFy2023 order by city asc;

-- Select the maximum id from mcaFy2023 table
select max(id) from mcaFy2023;

-- Select the minimum id from mcaFy2023 table
select min(id) from mcaFy2023;

-- Select the average id from mcaFy2023 table
select avg(id) from mcaFy2023;

-- Count the number of names in mcaFy2023 table
select count(name) from mcaFy2023;

-- Count the number of ids in mcaFy2023 table and group by city
select count(id) from mcaFy2023 group by city;
