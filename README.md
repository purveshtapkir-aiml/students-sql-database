# Student Management SQL Database

A MySQL relational database project designed to manage **students, classes, teachers, subjects, marks, and attendance**.

This project demonstrates fundamental SQL and relational database concepts using a small school management system.

---

## Project Overview

The database is designed to store and manage information related to students and their academic activities.

The project includes:

* Student information
* Class information
* Teacher information
* Subject information
* Student marks and subject enrollment
* Student attendance

The database contains **15 students, 5 classes, 5 teachers, 5 subjects, student-subject records, and attendance records**.

---

## Database Tables

| Table              | Description                                                       |
| ------------------ | ----------------------------------------------------------------- |
| `Students`         | Stores student personal information and class assignment          |
| `Classes`          | Stores class, section, room, teacher, and year information        |
| `Teachers`         | Stores teacher details and subjects                               |
| `Subjects`         | Stores subject information and assigned teachers                  |
| `Student_Subjects` | Stores student enrollment, marks, semester, status, and exam date |
| `Attendance`       | Stores student attendance records                                 |

---

## Database Relationships

The main relationships in the database are:

```text
Students
   │
   ├── class_id ──────────> Classes
   │                           │
   │                           └── teacher_id ─────> Teachers
   │
   ├── student_id ────────> Student_Subjects
   │                           │
   │                           └── subject_id ─────> Subjects
   │
   └── student_id ────────> Attendance
```

---

## SQL Concepts Used

This project demonstrates the following SQL concepts:

* `CREATE DATABASE`
* `CREATE TABLE`
* `INSERT INTO`
* `SELECT`
* `INNER JOIN`
* Multiple-table `JOIN`
* `WHERE`
* `GROUP BY`
* `COUNT()`
* Column aliases
* Primary keys
* Relational database design
* Date filtering
* Aggregate functions

---

## Example Queries

### 1. Students with their class names

```sql
SELECT 
    s.name AS student_name,
    c.class_name
FROM Students s
JOIN Classes c 
    ON s.class_id = c.class_id;
```

### 2. Students who scored more than 85 marks

```sql
SELECT 
    s.name AS student_name,
    ss.marks,
    sub.subject_name
FROM Students s
JOIN Student_Subjects ss 
    ON s.student_id = ss.student_id
JOIN Subjects sub 
    ON ss.subject_id = sub.subject_id
WHERE ss.marks > 85;
```

### 3. Students absent on 2024-06-01

```sql
SELECT 
    s.name AS student_name,
    a.status
FROM Students s
JOIN Attendance a 
    ON s.student_id = a.student_id
WHERE a.status = 'Absent'
  AND a.date = '2024-06-01';
```

---

## Project Structure

```text
students-sql-database/
│
├── README.md
│
└── sql/
    ├── 01_create_database.sql
    ├── 02_create_tables.sql
    ├── 03_insert_data.sql
    └── 04_queries.sql
```

### SQL File Description

| File                     | Purpose                           |
| ------------------------ | --------------------------------- |
| `01_create_database.sql` | Creates and selects the database  |
| `02_create_tables.sql`   | Creates all database tables       |
| `03_insert_data.sql`     | Inserts sample records            |
| `04_queries.sql`         | Contains SQL queries for analysis |

---

## How to Run the Project

### Prerequisites

You need:

* MySQL
* MySQL Workbench or another MySQL-compatible SQL editor

### Steps

1. Clone or download this repository.
2. Open MySQL Workbench.
3. Run `01_create_database.sql`.
4. Run `02_create_tables.sql`.
5. Run `03_insert_data.sql`.
6. Run `04_queries.sql`.
7. Review the query results.

Run the files in the order shown above because each file depends on the previous database setup.

---

## Project Screenshots
1. TABLES Screenshot--
<img width="1232" height="412" alt="database-tables png" src="https://github.com/user-attachments/assets/0eb17109-94c8-45e3-bd61-f1e8bf697136" />

2. Student Table data--
<img width="684" height="432" alt="students-table png" src="https://github.com/user-attachments/assets/6cfb521c-5cdd-4789-9750-601dafc134f3" />

3. Some Query results--
<img width="648" height="594" alt="query2-results png" src="https://github.com/user-attachments/assets/7e3aea8f-6bf0-4126-931a-facdd71438c2" />
<img width="522" height="442" alt="query-results png" src="https://github.com/user-attachments/assets/dadb8f30-973d-49e3-82ec-50d6c5b685e9" />

4. ER diagram--


---

## Learning Outcomes

Through this project, I practiced:

* Designing a relational database
* Creating multiple related tables
* Working with primary keys
* Connecting tables using `JOIN`
* Filtering data using `WHERE`
* Grouping and counting records
* Retrieving information from multiple related tables
* Organizing SQL code into a structured project

---

## Technologies Used

* **MySQL**
* **SQL**
* **MySQL Workbench**
* **GitHub**

---

## Author

**Purvesh Tapkir**

SQL / Database Learning Project
