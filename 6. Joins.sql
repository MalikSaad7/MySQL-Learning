SELECT *
FROM parks_and_recreation.employee_demographics ED
JOIN parks_and_recreation.employee_salary ES
ON ED.employee_id = ES.employee_id 
;

SELECT ED.employee_id, ED.first_name, ED.age, ES.occupation, ES.salary
FROM parks_and_recreation.employee_demographics ED
JOIN parks_and_recreation.employee_salary ES
ON ED.employee_id = ES.employee_id 
;

SELECT *
FROM parks_and_recreation.employee_demographics ED
LEFT JOIN parks_and_recreation.employee_salary ES
ON ED.employee_id = ES.employee_id 
;

SELECT *
FROM parks_and_recreation.employee_demographics ED
RIGHT JOIN parks_and_recreation.employee_salary ES
ON ED.employee_id = ES.employee_id 
;

-- Self Join
SELECT emp1.employee_id emp_santa, 
	emp1.first_name first_name_santa,
    emp1.last_name last_name_santa,
    emp2.first_name emp_first_name,
    emp2.last_name emp_last_name
FROM parks_and_recreation.employee_salary emp1
JOIN parks_and_recreation.employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;


-- Joining multiple tables

SELECT *
FROM parks_and_recreation.employee_demographics ED
INNER JOIN parks_and_recreation.employee_salary ES
	ON ED.employee_id = ES.employee_id 
INNER JOIN parks_and_recreation.parks_departments PD
	ON ES.dept_id = PD.department_id
;