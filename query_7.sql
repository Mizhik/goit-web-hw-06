SELECT s.full_name, g.grade
FROM Students s
JOIN Grades g ON s.id = g.student_id
JOIN Subjects subj ON g.subject_id = subj.id
WHERE s.group_id = 1 AND subj.name = 'oil';
