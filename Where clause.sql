select * from parks_and_recreation.employee_salary where first_name = 'leslie';
#---------Where clause condition is first name must be leslie

select * from parks_and_recreation.employee_salary where salary > 50000;
#---------Where clause condition is salary must above 50000

select * from parks_and_recreation.employee_salary where salary >= 50000;
#---------Where clause condition is salary can be 50000 or above

select * from parks_and_recreation.employee_salary where salary < 50000;
#---------Where clause condition is salary must be below 50000

select * from parks_and_recreation.employee_demographics where gender = 'male';
#----------condition is the gender is to be male

select * from parks_and_recreation.employee_demographics where gender!= 'male';
#----------condition is the gender is not to be male

select * from parks_and_recreation.employee_demographics where birth_date = '1985-07-26';
#------------it selects only the date which birth date is on 1985-07-26

select * from parks_and_recreation.employee_demographics where birth_date <= '1985-07-26' and gender = 'male';
#------------it selects only the date which birth date before 1985-07-26 and also the person gender is need to be male
 
 select * from parks_and_recreation.employee_demographics where birth_date <= '1985-07-26' or gender = 'male';
 #------------it selects only the date which birth date before 1985-07-26 or their  gender is need to be male
 
  select * from parks_and_recreation.employee_demographics where birth_date <= '1985-07-26' or not gender = 'male';
   #------------it selects only the date which birth date before 1985-07-26 or their  gender is need not to be male
   
select * from parks_and_recreation.employee_demographics where (first_name = 'leslie' and age = 44) or  age > 55;
#-----------and logic performed within paranthesis and the or operation performed outside the paranthesis

select * from parks_and_recreation.employee_demographics where first_name like 'les%';
#-----------anything where first name starts with les

select * from parks_and_recreation.employee_demographics where first_name like 'a__';
#-----------anything where first name starts with 'a' followed by 2 characters whisch is specified by underscore'_'

select * from parks_and_recreation.employee_demographics where first_name like 'a_n';
#----------starts with 'a' followed by a characteer and ends with 'n'

select * from parks_and_recreation.employee_demographics where first_name like '%n%';
#-----------the name should have the letter n in the middle start and end can be anything

select * from parks_and_recreation.employee_demographics where birth_date like '1989%';
#----------the year is 1989 but i dont know about the month and date so % is used






   



 



