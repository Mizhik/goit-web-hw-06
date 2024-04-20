SELECT t.id, t.full_name, s.name
FROM Subjects s 
JOIN Teachers t ON t.id = s.teacher_id 
GROUP BY t.id, t.full_name, s.name
order by t.id asc;

