-- Step 1: Create Database 
CREATE DATABASE college_db;
USE college_db;
-- Step 2: Create Students Table (Primary Key) 
CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);
-- Step 3: Create Marks Table (Foreign Key)
CREATE TABLE Marks (
    student_id INT,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES Students(id)
);
-- Step 4: Insert Data 
INSERT INTO Students VALUES
(1, 'Ram'),
(2, 'Shyam'),
(3, 'Mohan');
-- Insert into Marks 
INSERT INTO Marks VALUES
(1, 80),
(2, 75),
(3, 90);
-- Step 5: Run INNER JOIN
SELECT Students.name, Marks.marks
FROM Students
INNER JOIN Marks
ON Students.id = Marks.student_id;

-- query to run outer joint