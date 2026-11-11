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

- CREATE TABLE and INSERT statements
- Primary keys and foreign keys
- NOT NULL, UNIQUE and CHECK constraints
- SELECT and ORDER BY
- INNER JOIN and LEFT JOIN
- GROUP BY and aggregate functions
- COUNT, SUM and DISTINCT
- WHERE and IS NULL
- Basic calculations and percentage calculation

## Queries Implemented So Far

1. Retrieve all students and display them alphabetically.
2. Count students in each department, including departments with no students.
3. Display student academic details using joins.
4. Calculate the number of courses assigned to each faculty member.
5. Display courses, assigned faculty members and student enrolment counts.
6. Identify students who are not enrolled in any course.
7. Calculate total marks obtained and maximum marks for each enrolment.
8. Calculate the percentage obtained by students in each course enrolment.

## Planned Learning and Enhancements

The following topics will be added after learning and practising them:

- Course toppers using CTEs and window functions.
- Above-average student performance using subqueries.
- Department performance ranking.
- Database integrity testing.
- Query execution plans and indexing.

## How to Run the Project

**Requirements:** PostgreSQL 18 and pgAdmin 4.

1. Download or clone this repository.
2. Open pgAdmin 4 and connect to your PostgreSQL server.
3. Create a new database, for example `student_management_db`.
4. Open the Query Tool for the newly created database.
5. Open and execute `tables.sql` to create all six tables.
6. Open and execute `insertion.sql` to insert the sample records.
7. Open and execute `queries.sql` to view the query results.

**Important:** Execute the SQL files in the order shown above. Use a fresh database for the initial setup. Run the insertion script only once on that database to avoid duplicate records.

## Repository Structure

```text
student-management-database/
│
├── tables.sql
├── insertion.sql
├── queries.sql
└── README.md
```

## Project Status

**In Progress**

The initial database structure, sample records and eight SQL practice queries are included. Additional queries and database concepts will be added as learning progresses.
