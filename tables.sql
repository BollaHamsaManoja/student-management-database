-- 1. Departments
CREATE TABLE Departments(
depart_id SERIAL PRIMARY KEY,
d_name VARCHAR(100) NOT NULL UNIQUE,
office_location VARCHAR(150));

-- 2. Students
CREATE TABLE Students(
student_id SERIAL PRIMARY KEY,
studen_name VARCHAR(100) NOT NULL,
s_email_id VARCHAR(100) UNIQUE NOT NULL,
dob DATE NOT NULL,
admission_date DATE NOT NULL,
depart_id INT NOT NULL 
REFERENCES Departments(depart_id) ON DELETE RESTRICT,
status varchar(100) NOT NULL default 'Active' 
CHECK (status IN('Active', 'Graduated', 'Withdrawn')));

--3. Faculty
CREATE TABLE Faculty(
faculty_id SERIAL PRIMARY KEY,
f_name VARCHAR(100) NOT NULL,
f_email_id VARCHAR(100) UNIQUE NOT NULL,
depart_id INT NOT NULL 
REFERENCES departments(depart_id) ON DELETE RESTRICT);

--4. Courses
CREATE TABLE Courses(
course_id SERIAL PRIMARY KEY,
c_name VARCHAR(100) NOT NULL,
credits INT NOT NULL CHECK(credits>0),
depart_id INT NOT NULL 
REFERENCES Departments(depart_id) ON DELETE RESTRICT,
faculty_id INT 
REFERENCES Faculty(faculty_id) ON DELETE SET NULL);

--5. Enrollments
CREATE TABLE Enrollments(
enroll_id SERIAL PRIMARY KEY,
student_id INT NOT NULL 
REFERENCES Students(student_id) ON DELETE RESTRICT,
course_id INT NOT NULL 
REFERENCES Courses(course_id) ON DELETE RESTRICT,
semester VARCHAR(30) NOT NULL,
enroll_date DATE NOT NULL DEFAULT CURRENT_DATE,
UNIQUE(student_id, course_id, semester));

-- 6. Marks
CREATE TABLE Marks(
mark_id SERIAL PRIMARY KEY,
enroll_id INT NOT NULL 
REFERENCES Enrollments(enroll_id) ON DELETE RESTRICT,
assess_name VARCHAR(100) NOT NULL,
marks_obtained INT NOT NULL,
max_marks INT NOT NULL,
CHECK (marks_obtained >= 0),
CHECK (max_marks > 0),
CHECK (marks_obtained <= max_marks),
UNIQUE (enroll_id, assess_name)); 