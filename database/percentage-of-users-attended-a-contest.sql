SELECT contest_id,ROUND(COUNT(Users.user_id) *100.0/(SELECT COUNT(*) FROM Users),2) AS percentage FROM Users
INNER JOIN Register
ON Register.user_id = Users.user_id 
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC