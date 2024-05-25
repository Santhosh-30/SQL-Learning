-- don't get wierd of by the name CTE its just stands for Common Table Expression where you can write mutiple queries within the CTE and you need to intatntly use it
with CTE_NAME as
( select gender, avg(salary),
max(salary) as MAX_SAL,
min(salary) as MIN_SAL,
count(salary) as COUNT_SAL
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id=sal.employee_id 
group by gender
)
select MAX_SAL from CTE_NAME
;
-- CTE is also similar to subquery in this example we have combined two tables then we have used agg functions the cte must start  in "with"

with CTE_NAME as
( select gender,employee_id,first_name,last_name
from employee_demographics where  first_name='ann'
),
CTE_NAME2 as
(select salary,employee_id,occupation
from employee_salary 
)
select * from CTE_NAME
join CTE_NAME2
;
-- wwe can use multiple cte in one cte it can be used for complex problems