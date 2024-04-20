select s.full_name, g.subject_id, sbj.name
from grades g 
join students s on g.student_id = s.id
join subjects sbj on g.subject_id = sbj.id 
where g.student_id  = 6
group by s.full_name,g.subject_id, sbj.name;

