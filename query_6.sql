SELECT s.full_name, g.grade
FROM Students s
JOIN Grades g ON s.id = g.student_id
JOIN Subjects subj ON g.subject_id = subj.id
WHERE s.group_id = 3 -- Замініть 'your_group_id' на конкретний ID групи
  AND subj.name = 'iol'; -- Замініть 'your_subject_name' на назву конкретного предмета
