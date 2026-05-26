select s1.student_id, s1.student_name, s2.subject_name, COUNT(e.subject_name) as attended_exams
from (students s1 
      CROSS JOIN subjects s2)
LEFT JOIN examinations e
on e.student_id = s1.student_id and e.subject_name = s2.subject_name
group by s1.student_id, s2.subject_name
order by s1.student_id, s2.subject_name asc