-- Create the database
CREATE DATABASE IF NOT EXISTS my_library;

-- Use the database
USE my_library;

-- Create the 'books' table with auto-incrementing id
CREATE TABLE IF NOT EXISTS books (

    title TEXT,
    author TEXT,
    year INTEGER,
    genre TEXT
);

-- Insert sample data into the 'books' table
INSERT INTO books (title, author, year, genre) VALUES 
    ( 'To Kill a Mockingbird', 'Harper Lee', 1960, 'Fiction'),
    ( '1984', 'George Orwell', 1949, 'Dystopian Fiction'),
    ( 'Pride and Prejudice', 'Jane Austen', 1813, 'Romance'),
    ('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Fiction');

-- Retrieve combined results using UNION
SELECT title, author FROM books
UNION
SELECT genre, year FROM books;
