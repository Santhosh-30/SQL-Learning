delimiter $$
create procedure example()
begin
	SELECT * 
	from employee_demographics 
	where gender='male';
end $$
delimiter ;
-- now we have created an stored procedure with the nme as example

call example()
-- now we have called the stored procedure which we have named as example 



delimiter $$
create procedure large1(sk int)
begin
select salary 
from employee_salary
where employee_id=sk
;
end $$
delimiter ;
-- now we ahave created an stored procedure with parameter

call large1(1)
-- now we have called the stored procedure by the parameter