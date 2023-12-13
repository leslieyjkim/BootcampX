select 
a.id as student_id, 
a.start_date, 
a.end_date, 
b.start_date as cohort_start_date, 
b.end_date as cohort_end_date 
from 
students as a 
inner join 
cohorts as b 
on a.cohort_id = b.id 
where a.start_date <> b.start_date;


SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_date;