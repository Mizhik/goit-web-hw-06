SELECT t.full_name, AVG(g.grade)
FROM Grades g
JOIN Subjects subj ON g.subject_id = subj.id
JOIN Teachers t ON subj.teacher_id = t.id
WHERE subj.teacher_id = 2
group by t.full_name;