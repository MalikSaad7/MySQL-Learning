SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3
;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2,1
;

-- Aliasing
SELECT gender, AVG(age) as avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40
;