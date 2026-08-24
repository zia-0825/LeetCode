SELECT Signups.user_id, 
COALESCE(
ROUND(
    SUM(CASE action
    WHEN 'confirmed' THEN 1
    ELSE 0
    END ) *1.0 /NULLIF(COUNT(action), 0), 
    2),
    0)
   AS confirmation_rate
FROM Confirmations
RIGHT JOIN Signups ON
Confirmations.user_id = Signups.user_id    
GROUP BY Signups.user_id