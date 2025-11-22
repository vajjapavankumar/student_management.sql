Explanation :
This project is a Student Management Database System that manages data related to students, courses, and their marks.
It showcases how to design relational tables and establish foreign key relationships between entities.

Output:

+------------+---------+------+--------+------------------+
| student_id | name    | age  | gender | department       |
+------------+---------+------+--------+------------------+
|          1 | Pavan   |   20 | M      | Computer Science |
|          2 | Unknown |   21 | F      | Electronics      |
+------------+---------+------+--------+------------------+
+---------+-------------+
| name    | department  |
+---------+-------------+
| Unknown | Electronics |
+---------+-------------+
+---------+-------------+-------+
| name    | course_name | marks |
+---------+-------------+-------+
| Pavan   | DBMS        |    85 |
| Unknown | Java        |    90 |
+---------+-------------+-------+

Learnings :
Through this project, I learned how to:
*Design a normalized relational schema
*Implement foreign keys to maintain referential integrity
*Write clean, efficient SQL queries for real-world use cases.
