# Student Management Database

## Project Overview
The Student Management Database is a relational database project developed using PostgreSQL. It is designed to store and manage information about students, departments, faculty members, courses, enrolments and student assessments.
The project focuses on understanding relational database concepts and practising SQL queries through practical examples.

## Objectives

- Design a relational database with multiple interconnected tables.
- Establish relationships using primary keys and foreign keys.
- Store and retrieve student and academic information.
- Practise SQL queries for data retrieval and analysis.
- Understand data integrity and database management concepts.

## Technologies Used

- PostgreSQL 18
- pgAdmin 4
- SQL

## Database Structure

The database consists of six tables:

| Table | Description |
|---|---|
| Departments | Stores department details. |
| Students | Stores student information. |
| Faculty | Stores faculty member details. |
| Courses | Stores course information and faculty assignments. |
| Enrollments | Records students enrolled in courses. |
| Marks | Stores assessment marks for each enrolment. |

## Relationships

- A department can have multiple students.
- A department can have multiple faculty members.
- A department can offer multiple courses.
- A faculty member can be assigned multiple courses.
- A student can enrol in multiple courses.
- Each enrolment can have multiple assessment records.

## SQL Concepts Practised

The project currently includes practice with:

- CREATE TABLE and INSERT statements
- Primary keys and foreign keys
- NOT NULL and UNIQUE constraints
- SELECT and ORDER BY
- INNER JOIN and LEFT JOIN
- GROUP BY and aggregate functions
- COUNT, SUM and DISTINCT
- WHERE and IS NULL
- Subqueries and basic calculations

## Queries Implemented So Far

1. Retrieve all students and display them alphabetically.
2. Count students in each department, including departments with no students.
3. Display student academic details using joins.
4. Calculate the number of courses assigned to each faculty member.
5. Display courses, assigned faculty members and student enrolment counts.
6. Identify students who are not enrolled in any course.
7. Calculate total marks obtained and maximum marks for each enrolment.
8. Calculate the percentage obtained by students in each course enrolment.
