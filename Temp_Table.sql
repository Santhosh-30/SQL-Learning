create temporary table temp_table (
select* from employee_demographics );
select* from temp_table;
-- now we are copying entire table into our temporary table

create temporary table temp_table (
select* from employee_demographics where age<30 );
select* from temp_table;
-- temporary table are used for several things you can store any part of data in a temporary table
