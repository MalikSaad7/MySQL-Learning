-- CASE Statements

SELECT first_name,
	last_name,
    age,
    CASE
		WHEN age <= 30 THEN 'YOUNG'
        WHEN age between 31 and 50 THEN 'OLD'
        WHEN age > 50 THEN 'Going To Retire Soon'
        END Age_Bracket
FROM parks_and_recreation.employee_demographics
;

-- Pay Increase and Bonus
/*  <= 50000 = 5%
	> 50000 = 7%
    Finance = 10%
*/ 
SELECT first_name,
	last_name,
    salary,
    CASE
		WHEN salary <= 50000 THEN salary*1.05
        WHEN salary > 50000 THEN salary*1.07
        END New_Salary,
	CASE 
		WHEN dept_id = 6 THEN salary*0.10
        END Bonus
FROM parks_and_recreation.employee_salary
;