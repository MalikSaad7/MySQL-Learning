SELECT *
FROM parks_and_recreation.employee_demographics
;


-- UPDATE Table
UPDATE parks_and_recreation.employee_demographics
SET first_name = 'Holly'
where employee_id = 12
;

UPDATE parks_and_recreation.employee_demographics
SET age = 36, gender = 'Female'
where employee_id = 12
;


-- DELETE from table
DELETE FROM parks_and_recreation.employee_demographics
WHERE employee_id = 10;
/* DELETE clasue will delete everythinh and will not be able to return */