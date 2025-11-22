CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender CHAR(1),
    department VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    credits INT
);

CREATE TABLE enrollments (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO students VALUES (1, 'Pavan', 20, 'M', 'Computer Science');
INSERT INTO students VALUES (2, 'Unknown', 21, 'F', 'Electronics');

INSERT INTO courses VALUES (101, 'DBMS', 4);
INSERT INTO courses VALUES (102, 'Java', 3);

INSERT INTO enrollments VALUES (1, 1, 101, 85);
INSERT INTO enrollments VALUES (2, 2, 102, 90);

SELECT * FROM students;

SELECT name, department FROM students WHERE age > 20;
SELECT s.name, c.course_name, e.marks
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON c.course_id = e.course_id;