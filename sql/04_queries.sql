USE students_assignment;

-- =====================================================
-- 1. List students with their class names.
-- =====================================================

SELECT s.name AS student_name, c.class_name
FROM students s
INNER JOIN classes c ON s.class_id = c.class_id;

-- =====================================================
-- 2. Show each student and their city with the teacher 
--    assigned to their class.
-- =====================================================

SELECT s.name AS student_name, s.city, t.name AS teacher_name
FROM students s
JOIN classes c ON s.class_id = c.class_id
JOIN teachers t ON c.teacher_id = t.teacher_id;

-- =========================================================
-- 3. List students with subject names they are enrolled in.
-- =========================================================

SELECT s.name AS student_name, s2.subject_name
FROM students s
JOIN student_subjects s1 ON s.student_id = s1.student_id
JOIN subjects s2 ON s1.subject_id = s2.subject_id;

-- =====================================================
-- 4. Get all students and their marks in Math.
-- =====================================================

SELECT s.name AS student_name, s1.marks
FROM students s
JOIN student_subjects s1 ON s.student_id = s1.student_id
JOIN subjects s2 ON s1.subject_id = s2.subject_id
WHERE s2.subject_name = "math";

-- ===========================================================
-- 5. List students and their attendance status on 2024-06-01.
-- ===========================================================

SELECT s.name AS student_name, a.status
FROM students s
JOIN attendance a ON s.student_id = a.student_id
WHERE a.date = "2024-06-01";

-- ========================================================
-- 6. Show class name and number of students in each class.
-- ========================================================

SELECT c.class_id, c.class_name, count(s.student_id) AS number_of_students
FROM classes c
JOIN students s ON c.class_id = s.class_id
GROUP BY c.class_id, c.class_name;

-- ===========================================================
-- 7. Find students who got more than 85 marks in any subject.
-- ===========================================================

SELECT s.name AS Student_name, m.marks, s1.subject_name
FROM students s
JOIN student_subjects m ON s.student_id = m.student_id
JOIN subjects s1 ON m.subject_id = s1.subject_id
WHERE m.marks > 85;

-- ============================================================
-- 8. List students along with subject names and their teacher.
-- ============================================================

SELECT s.name AS Student_name, s2.subject_name, t.name AS Teacher_name
FROM students s
JOIN student_subjects s1 ON s.student_id = s1.student_id
JOIN subjects s2 ON s1.subject_id = s2.subject_id
JOIN teachers t ON s2.teacher_id = t.teacher_id;

-- =====================================================
-- 9. Get students who are absent on 2024-06-01.
-- =====================================================

SELECT s.name AS Student_name, a.status
FROM students s
JOIN attendance a ON s.student_id = a.student_id
WHERE a.status = "absent" AND a.date = "2024-06-01";
