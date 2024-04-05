-- Create the database
CREATE DATABASE IF NOT EXISTS university;

-- Switch to the university database
USE university;

-- Create the InformationTechnologyCourses table
CREATE TABLE IF NOT EXISTS InformationTechnologyCourses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    course_description TEXT,
    course_credits INT
);

-- Create the Teachers table
CREATE TABLE IF NOT EXISTS Teachers (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(255) NOT NULL,
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES InformationTechnologyCourses(course_id)
);

-- Example data insertion into InformationTechnologyCourses table
INSERT INTO InformationTechnologyCourses (course_id, course_name, course_description, course_credits)
VALUES
    (1, 'Introduction to Programming', 'Fundamentals of programming with Python', 3),
    (2, 'Database Management Systems', 'Introduction to database concepts and SQL', 4),
    (3, 'Web Development', 'Building dynamic websites using HTML, CSS, and JavaScript', 4);

-- Example data insertion into Teachers table
INSERT INTO Teachers (teacher_id, teacher_name, course_id)
VALUES
    (101, 'Mr. Smith', 1),
    (102, 'Ms. Johnson', 2),
    (103, 'Dr. Williams', 3);


select *from InformationTechnologyCourses,Teachers;
 