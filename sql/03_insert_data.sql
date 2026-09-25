INSERT INTO Students VALUES
(1, 'Alice', 14, 'F', 101, 'New York'),
(2, 'Bob', 15, 'M', 101, 'Los Angeles'),
(3, 'Charlie', 13, 'M', 102, 'Chicago'),
(4, 'Diana', 14, 'F', 103, 'Houston'),
(5, 'Ethan', 15, 'M', 101, 'Phoenix'),
(6, 'Fiona', 14, 'F', 104, 'Philadelphia'),
(7, 'George', 13, 'M', 102, 'San Diego'),
(8, 'Hannah', 15, 'F', 104, 'Dallas'),
(9, 'Ian', 14, 'M', 103, 'San Jose'),
(10, 'Jane', 13, 'F', 101, 'Austin'),
(11, 'Kevin', 15, 'M', 105, 'Jacksonville'),
(12, 'Laura', 14, 'F', 105, 'San Francisco'),
(13, 'Mike', 13, 'M', 104, 'Columbus'),
(14, 'Nina', 15, 'F', 102, 'Charlotte'),
(15, 'Oscar', 14, 'M', 103, 'Fort Worth');


INSERT INTO Classes VALUES
(101, 'Grade 8', 'A', 201, 1, 2024),
(102, 'Grade 8', 'B', 202, 2, 2024),
(103, 'Grade 9', 'A', 203, 3, 2024),
(104, 'Grade 9', 'B', 204, 4, 2024),
(105, 'Grade 10', 'A', 205, 5, 2024);


INSERT INTO Teachers VALUES
(1, 'Mr. Smith', 'Math', '111-111-1111', 'smith@school.com', 'M'),
(2, 'Ms. Johnson', 'English', '222-222-2222', 'johnson@school.com', 'F'),
(3, 'Mr. Lee', 'Science', '333-333-3333', 'lee@school.com', 'M'),
(4, 'Mrs. Brown', 'History', '444-444-4444', 'brown@school.com', 'F'),
(5, 'Mr. Green', 'Physics', '555-555-5555', 'green@school.com', 'M');


INSERT INTO Subjects VALUES
(1, 'Math', 'Hard', 60, 100, 1),
(2, 'English', 'Medium', 45, 100, 2),
(3, 'Science', 'Hard', 50, 100, 3),
(4, 'History', 'Easy', 40, 100, 4),
(5, 'Physics', 'Hard', 60, 100, 5);


INSERT INTO Student_Subjects VALUES
(1, 1, 85, 1, 'Pass', '2024-05-01'),
(2, 1, 78, 1, 'Pass', '2024-05-01'),
(3, 2, 90, 1, 'Pass', '2024-05-02'),
(4, 3, 88, 1, 'Pass', '2024-05-03'),
(5, 1, 76, 1, 'Pass', '2024-05-01'),
(6, 4, 92, 1, 'Pass', '2024-05-04'),
(7, 2, 81, 1, 'Pass', '2024-05-02'),
(8, 3, 85, 1, 'Pass', '2024-05-03'),
(9, 1, 67, 1, 'Pass', '2024-05-01'),
(10, 5, 74, 1, 'Pass', '2024-05-05'),
(11, 5, 80, 1, 'Pass', '2024-05-05'),
(12, 4, 90, 1, 'Pass', '2024-05-04'),
(13, 3, 88, 1, 'Pass', '2024-05-03'),
(14, 2, 86, 1, 'Pass', '2024-05-02'),
(15, 1, 79, 1, 'Pass', '2024-05-01');


INSERT INTO Attendance VALUES
(1, '2024-06-01', 'Present', 1, 'Mr. Smith', ''),
(2, '2024-06-01', 'Absent', 1, 'Mr. Smith', 'Sick'),
(3, '2024-06-01', 'Present', 1, 'Ms. Johnson', ''),
(4, '2024-06-01', 'Present', 1, 'Mr. Lee', ''),
(5, '2024-06-01', 'Present', 1, 'Mr. Smith', ''),
(6, '2024-06-01', 'Absent', 1, 'Mrs. Brown', 'Leave'),
(7, '2024-06-01', 'Present', 1, 'Ms. Johnson', ''),
(8, '2024-06-01', 'Present', 1, 'Mr. Lee', ''),
(9, '2024-06-01', 'Present', 1, 'Mr. Smith', ''),
(10, '2024-06-01', 'Present', 1, 'Mr. Green', ''),
(11, '2024-06-01', 'Present', 1, 'Mr. Green', ''),
(12, '2024-06-01', 'Absent', 1, 'Mrs. Brown', 'Family Trip'),
(13, '2024-06-01', 'Present', 1, 'Mr. Lee', ''),
(14, '2024-06-01', 'Present', 1, 'Ms. Johnson', ''),
(15, '2024-06-01', 'Absent', 1, 'Mr. Smith', 'Late');
