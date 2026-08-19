SELECT name, bonus FROM Bonus
FULL OUTER JOIN Employee ON
Bonus.empId = Employee.empId
WHERE Bonus.bonus < 1000
OR 
Bonus.empId is null
