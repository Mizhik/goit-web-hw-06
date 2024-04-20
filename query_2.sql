SELECT s.id, s.full_name AS student_name, AVG(g.grade) AS average_grade
FROM Students s
JOIN Grades g ON s.id = g.student_id
WHERE g.subject_id = 3 
GROUP BY s.id, s.full_name
ORDER BY average_grade DESC
limit 1;
