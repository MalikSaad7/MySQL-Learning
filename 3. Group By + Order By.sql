Select gender, 
AVG(age)
From parks_and_recreation.employee_demographics
group by gender;

SELECT occupation, salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation, salary;

Select gender, 
AVG(age),
MAX(age),
MIN(age),
COUNT(age)
From parks_and_recreation.employee_demographics
group by gender;


SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name;