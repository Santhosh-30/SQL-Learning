SELECT * from employee_demographics;
SELECT * from employee_salary;
 
select first_name,last_name ,
case 
when age<30 then 'young'
when age between 30 and 50 then 'old'
when age>50 then 'senior citizens'
end as age_label
from employee_demographics;
-- we have catogrized the employees by thier age using case statements

select first_name,last_name,salary,dept_id,
case 
when salary<50000 then salary*1.05
when salary between 50000 and 90000 then salary*1.07
when dept_id=6 then salary*1.10
end as hike
from employee_salary;
-- now we have incresed the salary of the employee using the case statements based on the previous salary and their department

