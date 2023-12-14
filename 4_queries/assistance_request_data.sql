select
teachers.name as teacher, 
students.name as student, 
assignments.name as assignment, 
(completed_at - started_at) as duration/*don't add the comma, after last entity*/
from assistance_requests 
join teachers on teachers.id = teacher_id 
join students on student_id = students.id 
join assignments on assignments.id = assignment_id 
order by duration;

