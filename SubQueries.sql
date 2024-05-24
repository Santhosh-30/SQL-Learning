#--- there are three diffrent tyes of sub queries

select * from employee_salary;
select * from employee_demographics;
select * from employee_demographics where employee_id in (
select employee_id from employee_salary where dept_id=1
);
#---in this query we have used our subquery in where conndition 
-- it is mainly used to identify records from mutiple table with their unique keys like emp_id

select first_name,last_name,salary,
(select avg(salary) from employee_salary)
from employee_salary;
#--- it is the second type where we can use our subqueries in directly on the select statements
-- this is majorly used to create an aggregate function with in the same table

select gender,avg(min_age) from
(select gender ,
avg(age) as avg_age,
min(age) as min_age,
max(age) as max_age,
count(age) as count_age 
from employee_demographics group by gender) as AGG_table
group by gender;
#---then finally we have used iT SELECT statement itself
-- in this subquery wewe have selected and used some agg function in demograaphics table this table will be a derived table and we are now selecting the data from the derived table  