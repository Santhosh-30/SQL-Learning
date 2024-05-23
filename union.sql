#---need of union is to have multiple select statements at a time

select first_name , last_name from parks_and_recreation.employee_demographics union 
select first_name , last_name from parks_and_recreation.employee_salary;
#---it combines both the table and also removes duplicates on the combined table

select first_name , last_name from parks_and_recreation.employee_demographics union all
select first_name , last_name from parks_and_recreation.employee_salary;
#---it combines both the table and also does not removes duplicates on the combined table

select first_name , last_name,'old' as label from parks_and_recreation.employee_demographics where age>50 union 
select first_name , last_name, 'highly paid employee' as label from parks_and_recreation.employee_salary where salary>70000;
#---it combines multiple select stament and union it and pprovides an output here it is combination of first and last name from both demographics and salary table and 

select first_name , last_name,'old man' as label from parks_and_recreation.employee_demographics where age>40 and gender=male union
select first_name , last_name,'old lady' as label from parks_and_recreation.employee_demographics where age>40  and gender=female union 
select first_name , last_name, 'highly paid employee' as label from parks_and_recreation.employee_salary where salary>70000;
#---it combines multiple select stament and union it and pprovides an output here it is combination of first and last name from both demographics and salary table and 
