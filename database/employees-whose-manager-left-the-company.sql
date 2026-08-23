SELECT employee_id FROM Employees
WHERE salary < 30000
AND manager_id NOT IN
(SELECT report.manager_id
FROM Employees AS emp
INNER JOIN Employees AS report ON
emp.employee_id = report.manager_id
)
