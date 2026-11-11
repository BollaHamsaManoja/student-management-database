-- INSERTION - DEPARTMENTS
insert into Departments(d_name, office_location) values ('CSE','BLOCK A');
insert into Departments(d_name, office_location) values ('ECE','BLOCK B');
insert into Departments(d_name, office_location) values ('EEE','BLOCK C');
insert into Departments(d_name, office_location) values ('MECHANICAL','BLOCK D');
select * from Departments order by depart_id ASC;

-- INSERTION - STUDENTS
insert into Students(studen_name,s_email_id,dob,admission_date, depart_id, status) 
values('Aarav Kumar','aarav@example.com','2005-02-14','2023-07-10',1,'Active'),
('Diya Sharma','diya@example.com','2004-11-23','2022-07-12',1,'Active'),
('Rahul Reddy','rahul@example.com','2005-06-18','2023-07-10',2,'Active'),
('Priya Nair','priya@example.com','2004-04-09','2022-07-12',2,'Active'),
('Arjun Rao','arjun@example.com','2005-09-30','2023-07-10',3,'Active'),
('Meera Das','meera@example.com','2004-12-01','2022-07-12',1,'Graduated'),
('Kiran Patel','kiran@example.com','2005-03-11','2023-07-10',4,'Active'),
('Sana Ali','sana@example.com','2005-07-20','2023-07-10',2,'Withdrawn');
select * from Students order by student_id ASC;

-- INSERTION - FACULTY
insert into Faculty(f_name,f_email_id,depart_id)
values('Dr. Anil Rao','anil@example.com',1),
('Dr. Kavya Menon','kavya@example.com',2),
('Prof. Vivek Shah','vivek@example.com',3),
('Prof. Neha Singh','neha@example.com',1),
('Dr. Suresh Kumar','suresh@example.com',4);
select * from Faculty order by faculty_id ASC;

-- INSERTION - COURSES
insert into Courses(c_name,credits,depart_id,faculty_id) values
('Database Management Systems',4,1,1),
('Data Structures',4,1,4),
('Computer Networks',3,1,1),
('Digital Electronics',3,2,2),
('Circuit Theory',4,3,3),
('Thermodynamics',3,4,5),
('Introduction to Programming',3,1,NULL);
select * from Courses order by course_id ASC;

-- INSERTION - ENROLLMENTS
insert into Enrollments(student_id,course_id,semester,enroll_date) values
(1,1,'2025-Sem1','2025-07-15'),
(1,2,'2025-Sem1','2025-07-15'),
(1,3,'2025-Sem1','2025-07-16'),
(2,1,'2025-Sem1','2025-07-15'),
(2,2,'2025-Sem1','2025-07-15'),
(3,4,'2025-Sem1','2025-07-17'),
(4,4,'2025-Sem1','2025-07-17'),
(5,5,'2025-Sem1','2025-07-18'),
(6,1,'2024-Sem2','2024-12-10'),
(6,2,'2024-Sem2','2024-12-10'),
(7,6,'2025-Sem1','2025-07-18'),
(8,4,'2025-Sem1','2025-07-17'),
(3,1,'2025-Sem1','2025-07-19'),
(4,1,'2025-Sem1','2025-07-19');
select * from Enrollments order by enroll_id ASC;

-- INSERTION - MARKS
insert into Marks(enroll_id,assess_name,marks_obtained,max_marks) values
(1,'Internal',18,20),
(1,'Final',76,80),
(2,'Internal',15,20),
(2,'Final',68,80),
(3,'Internal',17,20),
(3,'Final',70,80),
(4,'Internal',20,20),
(4,'Final',78,80),
(5,'Internal',19,20),
(5,'Final',74,80),
(6,'Internal',12,20),
(6,'Final',48,80),
(7,'Internal',16,20),
(7,'Final',62,80),
(8,'Internal',14,20),
(8,'Final',59,80),
(9,'Internal',17,20),
(9,'Final',72,80),
(10,'Internal',13,20),
(10,'Final',54,80),
(11,'Internal',18,20),
(11,'Final',75,80),
(12,'Internal',11,20),
(12,'Final',42,80),
(13,'Internal',16,20),
(13,'Final',65,80),
(14,'Internal',19,20),
(14,'Final',77,80);
select * from Marks order by mark_id ASC;