/*select 
cohorts.name, 
avg(completed_at - started_at) as average_assistance_time 
from assistance_requests 
join students on students.id = assistance_requests.student_id  
join cohorts on cohorts.id = cohort_id
group by cohorts.name
order by average_assistance_time;*/



SELECT cohorts.name, AVG(completed_at - started_at) as average_assistance_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id  -- Notice the explicit reference here
GROUP BY cohorts.name
ORDER BY average_assistance_time;