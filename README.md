---
# Main-Flow-Task-1

Name: Sanskruti Thakur

Company: Main Flow Services And Technologies

Domain: SQL Developer

Duration: January 2025 to March 2025
---

# Overview of the Project

Project: Student Management System for SQL Developers  

This project involves the design and implementation of a **Student Management System** using SQL. The aim is to develop hands-on experience with database creation, data manipulation, and querying while analyzing student performance data. The project uses SQL queries to store, retrieve, and process data effectively.  ---

**Key Objectives**  

1. **Database Setup:**  
   - Create a database named `StudentManagement`.  
   - Design a table `Students` with fields like `StudentID`, `Name`, `Gender`, `Age`, `Grade`, `MathScore`, `ScienceScore`, and `EnglishScore`.  

2. **Data Insertion:**  
   - Insert diverse sample records with Indian student names, representing various genders, grades, and subject scores.  

3. **Data Exploration and Analysis Tasks:**  
   - Display all student records.  
   - Compute average scores for each subject.  
   - Identify the top-performing student.  
   - Count students in each grade.  
   - Compare average scores based on gender.  
   - Highlight students excelling in Mathematics.  
   - Update student grades when necessary.  

---

**Project Flow**

1. **Database and Table Creation:**  
   Set up the database structure for storing student information.  

2. **Data Population:**  
   Insert a range of sample data with realistic entries.  

3. **Query Execution:**  
   Perform the following tasks:  
   - Fetch all records.  
   - Aggregate and calculate scores.  
   - Perform filtering and grouping operations.  
   - Modify specific records when needed.  

4. **Analysis and Insights:**  
   Use query results to derive meaningful insights into student performance and demographics.

   ![image](https://github.com/user-attachments/assets/de773056-0a71-4575-90d6-e1d6fc318b0f)
   ![image](https://github.com/user-attachments/assets/5f58e92b-d097-4a4d-8fcd-baf036629334)
   ![image](https://github.com/user-attachments/assets/e29287ee-f0c0-4856-83be-175537a282a8)
   ![image](https://github.com/user-attachments/assets/5d7c5ee6-defd-4274-b541-9da202886bc4)
   ![image](https://github.com/user-attachments/assets/3c833233-573a-48a3-a4f0-c247160f47d5)
   ![image](https://github.com/user-attachments/assets/f40bd120-fadb-419b-82bc-d34d0072a988)
   ![image](https://github.com/user-attachments/assets/8347cb17-2b7c-4bd2-8fbe-5b77d16fc99b)

---

**SQL Queries Used**  

```sql
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
```  

---

**Tools Used**  

1. **SQL Environment:** MySQL Workbench or any SQL tool for query execution.  

---

**Insights and Findings**  

1. The average scores across subjects reveal areas needing improvement.  
2. Gender-based analysis highlights performance trends between male and female students.  
3. Identifying high achievers aids in targeted support for excelling students.  
4. Grade distribution reflects the academic structure and areas of improvement.  

--- 

**Intended Use**  

1. Demonstrate SQL skills in database creation, data manipulation, and analysis.  
2. Provide actionable insights into student performance data for educational institutions.  
3. Serve as a foundation for building more advanced student management systems.  
