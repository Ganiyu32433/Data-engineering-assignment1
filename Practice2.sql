#Query 1:Select all fields from the Students table
SELECT * FROM Students;

#Query 2: Retrieve students older than 18
SELECT * FROM Students
WHERE age > 18;

#Query 3: Retrieve the list of classes ordered alphabetically by class_name
SELECT * FROM Classes
ORDER BY class_name;

#Query 4: Count the number of students in each class
SELECT s.class_id, c.class_name, COUNT(s.student_id) AS number_of_students
FROM Students s
JOIN Classes c ON s.class_id = c.class_id
GROUP BY s.class_id, c.class_name;

#Query 5: Retrieve the first and last names of students with their class names
SELECT s.first_name AS student_first_name, s.last_name AS student_last_name, c.class_name
FROM Students s
JOIN Classes c ON s.class_id = c.class_id;

#Query 6: Retrieve student names, subjects they are enrolled in, and teacher's name
SELECT s.first_name AS student_first_name, s.last_name AS student_last_name,
       sub.subject_name, t.first_name AS teacher_first_name, t.last_name AS teacher_last_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Subjects sub ON e.subject_id = sub.subject_id
JOIN Teachers t ON sub.class_id = t.teacher_id;
