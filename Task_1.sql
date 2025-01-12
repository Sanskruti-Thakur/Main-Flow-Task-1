# Creating the database StudentManagement
CREATE DATABASE StudentManagement;

# Using the database
USE StudentManagement;

# Creating Students table and adding required filed
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(1),
    Age INT,
    Grade VARCHAR(10),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

# Inserting data into Students table
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES 
('Arjun', 'M', 18, 'A', 85, 90, 88),
('Kriti', 'F', 19, 'B', 78, 75, 80),
('Ishita', 'F', 19, 'A', 92, 95, 89),
('Abhimaan', 'M', 19, 'A', 93, 91, 92),
('Samaira', 'F', 17, 'A', 95, 98, 90),
('Rudraksh', 'M', 18, 'A', 88, 82, 85),
('Shreshtha', 'F', 19, 'B', 80, 88, 86),
('Kairav', 'M', 19, 'C', 55, 60, 58),
('Ananya', 'F', 18, 'A', 90, 92, 91),
('Rishi', 'M', 19, 'B', 82, 84, 88);

# Displaying all students and their details
SELECT * FROM Students;

# Calculating Average Scores for each Subject
SELECT 
    AVG(MathScore) AS AvgMathScore,
    AVG(ScienceScore) AS AvgScienceScore,
    AVG(EnglishScore) AS AvgEnglishScore
FROM Students;

# Finding the Top Performer (Highest Total Score)
SELECT Name, (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

# Counting the Number of Students in Each Grade
SELECT Grade, COUNT(*) AS NumberOfStudents
FROM Students
GROUP BY Grade;

# Finding Average Scores by Gender
SELECT 
    Gender,
    AVG(MathScore) AS AvgMathScore,
    AVG(ScienceScore) AS AvgScienceScore,
    AVG(EnglishScore) AS AvgEnglishScore
FROM Students
GROUP BY Gender;

# Identifying High Achievers in Math
SELECT Name, MathScore 
FROM Students
WHERE MathScore > 90;

# Updating Grade for a Specific Student
UPDATE Students
SET Grade = 'A'
WHERE StudentID = 5;