SELECT DISTINCT subj.name as subject, t.full_name as student, s.full_name as teacher
FROM Students s
JOIN Grades g ON s.id = g.student_id
JOIN Subjects subj ON g.subject_id = subj.id
JOIN Teachers t ON subj.teacher_id = t.id
WHERE s.id = 12
  AND t.id = 1;