-- Calculates the difference between the highest salaries in the marketing and engineering departments. Output just the absolute difference in salaries.
with salary_max as (select e.salary, d.department
from db_employee as e
inner join db_dept as d
on e.department_id=d.id
where d.department = 'marketing' or d.department='engineering')
select (max(salary)-(select max(salary) as engneer_salary
from salary_max where department='engineering')) as salary_difference 
from salary_max
where department ='marketing';
-- Find the last time each bike was in use. Output both the bike number and the date-timestamp of the bike's last use (i.e., the date-time the bike was returned). Order the results by bikes that were most recently used.

select bike_number, max(end_time) as last_used from dc_bikeshare_q1_2012
group by bike_number ;
