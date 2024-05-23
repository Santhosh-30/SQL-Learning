select * from parks_and_recreation.employee_demographics;
#used to show the emp demographics table

select * from parks_and_recreation.employee_salary;
#used to show the emp salary table

select * from parks_and_recreation.employee_demographics as dem #allising demographics as dem
inner join employee_salary as sal #allising salary as sal
	on dem.employee_id=sal.employee_id;
    #---used inner join to combine both employee demogrephics table and employee salary table and also it will not combine the data if the data is presented in only one table for an example in this above code there is no emp demographics for employee id 2 where as it present in the employee salary table
    
    select dem.employee_id, age, occupation from parks_and_recreation.employee_demographics as dem #allising demographics as dem
inner join employee_salary as sal #allising salary as sal
	on dem.employee_id=sal.employee_id;
    
     select * from parks_and_recreation.employee_demographics as dem #allising demographics as dem
right join employee_salary as sal #allising salary as sal
	on dem.employee_id=sal.employee_id;
    #its looks the same as the previous output but the left join will take everything from the left table and takes only the matching values from the right table  
    
    select * from parks_and_recreation.employee_demographics as dem #allising demographics as dem
left join employee_salary as sal #allising salary as sal
	on dem.employee_id=sal.employee_id;
        #its vice versa of left join it's right join will take everything from the right table and takes only the matching values from the left table  

select * from employee_salary emp1 join employee_salary emp2 on emp1.employee_id+3=emp2.employee_id;    
#it can be used to join the same table with diffent unique ids
#now we have joined more than 2 table on a single table using inner joins
