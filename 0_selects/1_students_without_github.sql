select 
id, name, email, cohort_id 
from 
students 
where github is Null  --not case sensitive for null, Null.. 
order by cohort_id;



