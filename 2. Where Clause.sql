Select *
From parks_and_recreation.employee_salary
where first_name = 'Leslie';

Select *
From parks_and_recreation.employee_salary
where salary > 50000;

SELECT *
FROM parks_and_recreation.employee_demographics
where gender != 'Female';

SELECT *
FROM parks_and_recreation.employee_demographics
where birth_date > '1985-01-01';

-- Logical Operator (AND, OR & NOT)
SELECT *
FROM parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
and gender= 'Male';

SELECT *
FROM parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
OR gender= 'Male';

SELECT *
FROM parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
and not gender= 'Male';

SELECT *
FROM parks_and_recreation.employee_demographics
where first_name LIKE '%er%'
;