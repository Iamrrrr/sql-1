-- Retrieve Employees with High Salary
SELECT name,position,salary
FROM employees
WHERE salary>50000;

-- Bonus
Select name,position,salary
FROM ( SELECT name,position,salary
       FROM employees
       ORDER BY salary desc)
WHERE rownum<=3;
