SELECT emp.employee_id,emp.name, COUNT(report.reports_to) AS reports_count,  ROUND(AVG(report.age),0) AS average_age
FROM Employees AS emp
JOIN Employees AS report
ON emp.employee_id = report.reports_to
GROUP BY emp.employee_id,emp.name
ORDER BY emp.employee_id