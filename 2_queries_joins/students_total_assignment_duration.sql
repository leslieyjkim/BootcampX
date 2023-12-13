select name, sum(c.duration) 
from 
(select a.id, a.name, b.duration 
 from students as a 
 inner join assignment_submissions as b 
 on a.id = b.student_id 
 where a.name = 'Ibrahim Schimmel') 
as c group by name;