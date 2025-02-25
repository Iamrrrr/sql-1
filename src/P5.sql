-- Department Statistics
SELECT department,avg(salary) as "Average Salary"
FROM employees
GROUP BY department
ORDER BY avg(salary);

-- Bonus
SELECT department, salary,name
FROM employees
WHERE salary=(SELECT max(salary) FROM employees GROUP BY department);
