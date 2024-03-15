
WITH CTE_Employee(First_Name,Last_Name,Gender,Salary,Total_Emp,Average_Salarty) as (
	SELECT emp.first_name, emp.last_name, gender, salary,
		COUNT(gender) OVER(partition by Gender) Gender_total,
        AVG(salary) OVER(partition by gender) avg_salary
    FROM parks_and_recreation.employee_demographics emp
    JOIN parks_and_recreation.employee_salary sal
    ON emp.employee_id = sal.employee_id
    Where salary > 45000
    )

select *
FROM CTE_Employee
;

/*CTE directly works with SELECT statement*/

WITH CTE_Example AS (
	SELECT employee_id, gender, birth_date
    FROM parks_and_recreation.employee_demographics
    WHERE birth_date > '1985-01-01'
    ),
CTE_Example2 AS (
	SELECT employee_id, salary
    FROM parks_and_recreation.employee_salary
    Where salary > 50000
    )
SELECT *
FROM CTE_Example E1
JOIN CTE_Example2 E2
ON E1.employee_id = E2.employee_id
;