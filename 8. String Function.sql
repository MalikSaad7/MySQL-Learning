-- String Functions

SELECT first_name, length(first_name)
FROM parks_and_recreation.employee_demographics
ORDER BY 2
;

SELECT first_name, UPPER(first_name)
FROM parks_and_recreation.employee_demographics
;

SELECT first_name, LOWER(first_name)
FROM parks_and_recreation.employee_demographics
;

--- Trim
SELECT TRIM('   name   '), LTRIM('   name   '), RTRIM('   name   ')
;

-- Substring
SELECT first_name, 
LEFT(first_name,4),
RIGHT(first_name,4),
SUBSTRING(first_name,3,2),   -- substring(str,starting positio, # of Characters)
birth_date,
SUBSTRING(birth_date,6,2) birth_month
FROM parks_and_recreation.employee_demographics
;


-- Replace
SELECT first_name, REPLACE(first_name,'a','z')
FROM parks_and_recreation.employee_demographics
;

-- LOCATE
/* Returns the 1st starting position of character or string */
SELECT first_name, LOCATE('an',first_name)
FROM parks_and_recreation.employee_demographics
;


-- Concatenation
SELECT first_name, last_name,
	concat(first_name,' ',last_name) full_name
FROM parks_and_recreation.employee_demographics
;