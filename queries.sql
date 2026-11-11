-- List students alphabetically, showing their IDs, names, email addresses and status
SELECT 
	student_id,
	studen_name,
	s_email_id,
	status
FROM Students
ORDER BY studen_name ASC;

-- Show each department and its number of students, including departments with no students.
SELECT
    d.depart_id,
    d.d_name,
    COUNT(s.student_id) AS number_of_students
FROM Departments d
LEFT JOIN Students s
    ON d.depart_id = s.depart_id
GROUP BY d.depart_id, d.d_name
ORDER BY d.depart_id;

-- Show each department and its number of students, including departments with no students.
SELECT
    s.studen_name,
    d.d_name,
    c.c_name,
    e.semester
FROM Students s
INNER JOIN Departments d
    ON s.depart_id = d.depart_id
INNER JOIN Enrollments e
    ON s.student_id = e.student_id
INNER JOIN Courses c
    ON e.course_id = c.course_id;

-- Show every faculty member and the number of courses assigned to them, including faculty with zero courses.
SELECT
    f.faculty_id,
    f.f_name,
    COUNT(c.course_id) AS number_of_courses
FROM Faculty f
LEFT JOIN Courses c
    ON f.faculty_id = c.faculty_id
GROUP BY f.faculty_id, f.f_name;

-- Show every course and the number of students enrolled in it, including courses with zero enrolments.
SELECT
	c.course_id,
	c.c_name,
	COUNT(DISTINCT e.student_id) AS number_of_students
FROM Courses c
LEFT JOIN Enrollments e
	ON c.course_id= e.course_id
GROUP BY c.course_id, c.c_name;

-- Show each course, faculty name if assigned, and number of enrolled students.
SELECT
    c.course_id,
    c.c_name,
    f.f_name,
    COUNT(DISTINCT e.student_id) AS number_of_students
FROM Courses c
LEFT JOIN Faculty f
    ON c.faculty_id = f.faculty_id
LEFT JOIN Enrollments e
    ON c.course_id = e.course_id
GROUP BY c.course_id, c.c_name, f.f_name;

--Students without enrolments - Find students who have never enrolled in any course.
SELECT
	s.student_id,
	s.studen_name
FROM Students s
LEFT JOIN Enrollments e
	ON s.student_id=e.student_id
WHERE e.enroll_id IS NULL;

--Assessment summary - Calculate each enrolment s total marks obtained and total maximum marks.
SELECT
	e.enroll_id,
	SUM(m.marks_obtained) AS total_marks_obtained,
	SUM(m.max_marks) AS total_max_marks
FROM Enrollments e
LEFT JOIN Marks m
	ON e.enroll_id=m.enroll_id
GROUP BY e.enroll_id;

-- Percentage and performance - Calculate each student's percentage for each course using all their assessments.
SELECT
	s.student_id,
	s.studen_name,
	e.enroll_id,
	SUM(m.marks_obtained) AS total_marks_obtained,
	SUM(m.max_marks) AS total_max_marks,
	ROUND(SUM(m.marks_obtained) * 100.0 /NULLIF(SUM(m.max_marks),0),2) AS percentage
FROM Students s
LEFT JOIN Enrollments e
	ON s.student_id=e.student_id
LEFT JOIN Marks m
	ON e.enroll_id=m.enroll_id
LEFT JOIN Courses c
	ON e.course_id=c.course_id
GROUP BY s.student_id, s.studen_name, e.enroll_id, c.course_id,c.c_name;

-- Course toppers - Find the highest-performing student in each course using overall assessment percentage.

-- Above-average students - Find students whose overall assessment percentage is above the average percentage across all enrolments.
-- Department performance - Rank departments by average student-course percentage.
-- Data integrity - Try a duplicate email, invalid department ID, duplicate enrolment and marks above the maximum. Verify that each invalid operation fails.
-- Query optimization - Inspect the execution plan for a course-wise marks report. Determine whether indexes would help.