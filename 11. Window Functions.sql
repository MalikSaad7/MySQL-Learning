SELECT gender, AVG(salary) avg_salary
FROM parks_and_recreation.employee_demographics ED
JOIN parks_and_recreation.employee_salary ES
ON ED.employee_id = ES.employee_id
GROUP BY gender
;

## Window Function
/* Similar to group by aggregation but it preserve every indivdual row */

SELECT ED.first_name, ED.last_name,gender, AVG(salary) OVER(PARTITION BY gender) avg_salary
FROM parks_and_recreation.employee_demographics ED
JOIN parks_and_recreation.employee_salary ES
ON ED.employee_id = ES.employee_id
;

SELECT ED.first_name, ED.last_name,gender, SUM(salary) OVER(PARTITION BY gender) sum_salary
FROM parks_and_recreation.employee_demographics ED
JOIN parks_and_recreation.employee_salary ES
ON ED.employee_id = ES.employee_id
;

-- Rolling Total using Order By in Window function
SELECT ED.first_name, ED.last_name,gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY ED.employee_id) rolling_total
FROM parks_and_recreation.employee_demographics ED
JOIN parks_and_recreation.employee_salary ES
ON ED.employee_id = ES.employee_id
;

-- ROW_NUMBER
SELECT ED.first_name, ED.last_name,gender, salary,
ROW_NUMBER() OVER()
FROM parks_and_recreation.employee_demographics ED
JOIN parks_and_recreation.employee_salary ES
ON ED.employee_id = ES.employee_id
;

SELECT ED.first_name, ED.last_name,gender, salary,
ROW_NUMBER() OVER(partition by gender ORDER BY salary DESC) row_num
FROM parks_and_recreation.employee_demographics ED
JOIN parks_and_recreation.employee_salary ES
ON ED.employee_id = ES.employee_id
;

-- RANK()
SELECT ED.first_name, ED.last_name,gender, salary,
ROW_NUMBER() OVER(partition by gender ORDER BY salary DESC) row_num,
RANK() OVER(partition by gender ORDER BY salary DESC) rank_num
FROM parks_and_recreation.employee_demographics ED
JOIN parks_and_recreation.employee_salary ES
ON ED.employee_id = ES.employee_id
;

-- DENSE_RANK()
SELECT ED.first_name, ED.last_name,gender, salary,
ROW_NUMBER() OVER(partition by gender ORDER BY salary DESC) row_num,
RANK() OVER(partition by gender ORDER BY salary DESC) rank_num,
DENSE_RANK() OVER(partition by gender ORDER BY salary DESC) dense_rank_num
FROM parks_and_recreation.employee_demographics ED
JOIN parks_and_recreation.employee_salary ES
ON ED.employee_id = ES.employee_id
;