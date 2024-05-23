select * from parks_and_recreation.employee_demographics;
#---selecting our database

select gender from parks_and_recreation.employee_demographics group by  gender;
#---the select coulmn and the group by column must be same or else it will show you an error

select gender, avg(age) from parks_and_recreation.employee_demographics group by gender;
 #---using group by  and using an aggregate function AVG(age)
 
 select gender, avg(age), MIN(age), MAX(age), COUNT(age)  from parks_and_recreation.employee_demographics group by gender;
 #---using multiple aggregate function at a time
 
 select occupation from parks_and_recreation.employee_salary group by occupation;
#---you can group columns when there are multiple instatance of the same data in the column

 select occupation,salary from parks_and_recreation.employee_salary group by occupation,salary;
#---you can group mutiple columns 

select * from parks_and_recreation.employee_demographics order by  age ASC;
#---the age column wil be ordered in an ascending order

select * from parks_and_recreation.employee_demographics order by  age DESC;
#---the age column wil be ordered in an decending order

select * from parks_and_recreation.employee_demographics order by  birth_date DESC;
#---the birth_date column wil be ordered in an ascending order

select * from parks_and_recreation.employee_demographics order by  birth_date DESC;
#---the birth_date column wil be ordered in an decending order

 select * from parks_and_recreation.employee_demographics order by  5,4 DESC;
 #---we can make mutiple columns in order and also insted of column name used column no in the above
 
 select gender, AVG(age) from parks_and_recreation.employee_demographics group by  gender having avg(age)>35;
 #---it first group by in gender then it checks the average age and it finally shows only the gender who is having the average age above 35
 
 select * from parks_and_recreation.employee_demographics order by age desc limit 4;
 #---it selects the top 4 age in the descending order 
 
select gender,avg(age) as AVG1 from parks_and_recreation.employee_demographics group by gender having avg(age)>40;
#---alising is done using the key word 'as'

 
