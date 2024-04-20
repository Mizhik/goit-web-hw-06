SELECT s.full_name AS student_name, ROUND(AVG(g.grade),2) AS average_grade
FROM Students s
JOIN Grades g ON s.id = g.student_id
GROUP BY s.id,s.full_name
ORDER BY average_grade DESC
LIMIT 5;




