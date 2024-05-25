select* from parks_and_recreation.employee_demographics;
select* from parks_and_recreation.employee_salary;

select gender ,avg(salary)
from parks_and_recreation.employee_demographics dem 
join employee_salary sal 
on dem.employee_id=sal.employee_id
group by gender;
-- we have used to group by this is an example of group by now we can clearly understand diffrence between order by and windows function

select gender ,avg(salary) over()
from parks_and_recreation.employee_demographics dem 
join employee_salary sal 
on dem.employee_id=sal.employee_id;
-- now we are using windows function as over() which is similar to group by but it does have all the records on the structure

select gender ,avg(salary) over(partition by gender)
from parks_and_recreation.employee_demographics dem 
join employee_salary sal 
on dem.employee_id=sal.employee_id;
-- now we are using partion on windows functiom
 
 select dem.gender,sal.salary,dem.first_name,dem.last_name ,avg(salary) over(partition by gender)
from parks_and_recreation.employee_demographics dem 
join employee_salary sal 
on dem.employee_id=sal.employee_id;
-- it is the clear example between group by and windows function in this we can able to modify or select multiple statements from the previous one but it can't be done in group by

 select dem.gender,sal.salary,dem.first_name,dem.last_name,dem.age ,
 SUM(salary) over(partition by gender order by dem.employee_id) as rolling_total
from parks_and_recreation.employee_demographics dem 
join employee_salary sal 
on dem.employee_id=sal.employee_id;
-- when you sum using windows function it sum the data from each record in the column

 select dem.gender,sal.salary,dem.first_name,dem.last_name,dem.age ,
row_number() over()
from parks_and_recreation.employee_demographics dem 
join employee_salary sal 
on dem.employee_id=sal.employee_id;
-- we can use row number function to give identity to the rows

 select dem.gender,sal.salary,dem.first_name,dem.last_name,dem.age ,
row_number() over(partition by gender)
from parks_and_recreation.employee_demographics dem 
join employee_salary sal 
on dem.employee_id=sal.employee_id;
-- we can use row number function to give identity to the rows and also we can  also partion it

 select dem.gender,sal.salary,dem.first_name,dem.last_name,dem.age ,
row_number() over(partition by gender order by salary desc)
from parks_and_recreation.employee_demographics dem 
join employee_salary sal 
on dem.employee_id=sal.employee_id;
-- now we are partioning in the decending order

 select dem.gender,sal.salary,dem.first_name,dem.last_name,dem.age ,
row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc) as rank_no 
from parks_and_recreation.employee_demographics dem 
join employee_salary sal 
on dem.employee_id=sal.employee_id;
-- now we are giving rank based on salary

 select dem.gender,sal.salary,dem.first_name,dem.last_name,dem.age ,
row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc) as rank_no,
dense_rank() over(partition by gender order by salary desc) as dense_rank_no 
from parks_and_recreation.employee_demographics dem 
join employee_salary sal 
on dem.employee_id=sal.employee_id;
-- now we are adding dense rank to the existing code the diffrence is it does not skip any rank