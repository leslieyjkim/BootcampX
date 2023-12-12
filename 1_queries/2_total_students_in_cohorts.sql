select count(name)
from students
where cohort_id in (
  select distinct cohort_id from students order by cohort_id limit 3
  )
;