SELECT *
FROM parks_and_recreation.employee_demographics
WHERE employee_id in 
	( SELECT employee_id
	  FROM parks_and_recreation.employee_salary
      WHERE dept_id = 1
	)
;

SELECT first_name,
	salary, 
    (SELECT AVG(salary) FROM parks_and_recreation.employee_salary) avg_salary
FROM parks_and_recreation.employee_salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), count(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT AVG(`MAX(age)`)
FROM 
(SELECT gender, AVG(age), MAX(age), MIN(age), count(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender) Agg_table
;

SELECT AVG(max_age)
FROM 
(SELECT gender, AVG(age) avg_age, MAX(age) max_age, MIN(age) min_age, count(age) 
FROM parks_and_recreation.employee_demographics
GROUP BY gender) Agg_table
;