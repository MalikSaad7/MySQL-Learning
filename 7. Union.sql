SELECT *
FROM parks_and_recreation.employee_demographics
UNION
SELECT *
FROM parks_and_recreation.employee_salary
;

SELECT age, gender
FROM parks_and_recreation.employee_demographics
UNION
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
;


/* Above both Queries are example of bad data since fields of
	both tables are not alike, for union columns types should 
    be alike to corresponding column with which it is going to append
*/

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
;

/* By default UNION is a UNION DISTINCT; which means it will
	only return unique values so if want to get all values from
    both tables irrespective they are repeating we will use
    UNION ALL => return all corresponding values from both tables
*/

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION ALL
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
;


-- Union with where clause
SELECT first_name, last_name, 'Old' Label
FROM parks_and_recreation.employee_demographics
where age > 50
UNION
SELECT first_name, last_name, 'Highly Paid Employee' Label
FROM parks_and_recreation.employee_salary
where salary > 70000
;


SELECT first_name, last_name, 'Old Man' Label
FROM parks_and_recreation.employee_demographics
where age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' Label
FROM parks_and_recreation.employee_demographics
where age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Employee' Label
FROM parks_and_recreation.employee_salary
where salary > 70000
ORDER BY first_name, last_name	
;