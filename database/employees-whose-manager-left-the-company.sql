SELECT employee_id FROM Employees
WHERE salary < 30000
AND employee_id IN
(SELECT emp.employee_id
FROM Employees AS emp
RIGHT OUTER JOIN  Employees AS report ON
emp.employee_id = report.manager_id)
