SELECT age from parks_and_recreation.employee_demographics;
SELECT employee_id,
first_name,
last_name,
gender,
age,
age - 10
from parks_and_recreation.employee_demographics;

SELECT distinct gender from parks_and_recreation.employee_demographics; 


SELECT distinct first_name,gender from parks_and_recreation.employee_demographics;