SELECT name, EmployeeUNI.unique_id FROM Employees
FULL OUTER JOIN EmployeeUNI 
ON EmployeeUNI.id = Employees.id