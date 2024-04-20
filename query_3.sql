SELECT s2.name, AVG(g.grade) AS average_grade
FROM Grades g
JOIN Students s ON g.student_id = s.id
JOIN subjects s2 ON g.subject_id = s2.id
WHERE g.subject_id = 3
GROUP BY s2.name;