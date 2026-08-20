SELECT project_id,AVG(Employee.experience_years) AS average_years
FROM Project 
INNER JOIN Employee ON
Project.employee_id = Employee.employee_id
GROUP BY project_id