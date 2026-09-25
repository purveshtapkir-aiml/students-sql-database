CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    class_id INT,
    city VARCHAR(100)
);

CREATE TABLE Classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50),
    section CHAR(1),
    room_no INT,
    teacher_id INT,
    year INT
);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(100),
    subject VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(100),
    gender VARCHAR(10)
);

CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50),
    difficulty VARCHAR(10),
    duration INT,
    max_marks INT,
    teacher_id INT
);

CREATE TABLE Student_Subjects (
    student_id INT,
    subject_id INT,
    marks INT,
    semester INT,
    status VARCHAR(10),
    exam_date DATE,
    PRIMARY KEY (student_id, subject_id)
);

CREATE TABLE Attendance (
    student_id INT,
    date DATE,
    status VARCHAR(10),
    period INT,
    recorded_by VARCHAR(50),
    remarks VARCHAR(100)
);
