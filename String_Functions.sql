select* from parks_and_recreation.employee_demographics;
select* from parks_and_recreation.employee_salary;


select first_name, Replace (first_name,'es','a') from parks_and_recreation.employee_demographics;
-- string replace --

select first_name,last_name, concat(first_name,' ',last_name) as full_name from parks_and_recreation.employee_demographics;
-- string concat --

select first_name,last_name, locate('a',first_name) from parks_and_recreation.employee_demographics;
-- string locate --

select first_name,SUBSTRING(first_name,3,2 ) from parks_and_recreation.employee_demographics;
-- string substring --

select first_name,UPPER(first_name) from parks_and_recreation.employee_demographics;
select first_name,LOWER(first_name) from parks_and_recreation.employee_demographics;
-- string upper/lower cases conversion --

select first_name,reverse(first_name) from parks_and_recreation.employee_demographics;
-- string reverse
select first_name,RTRIM(first_name) from parks_and_recreation.employee_demographics;
select first_name,LTRIM(first_name) from parks_and_recreation.employee_demographics;
-- string trim --rtrim--ltrim --

select first_name,LENGTH(first_name) from parks_and_recreation.employee_demographics;
--  string length --

select first_name,RIGHT(first_name,5) from parks_and_recreation.employee_demographics;
select first_name,LEFT(first_name,5) from parks_and_recreation.employee_demographics;
-- string cut--left or right --






