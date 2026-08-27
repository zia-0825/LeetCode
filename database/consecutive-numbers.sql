SELECT id AS ConsecutiveNums
FROM (
    SELECT
        id,
        num,
        LEAD(id, 1) OVER (ORDER BY id) AS next_id,
        LEAD(id, 2) OVER (ORDER BY id) AS next2_id,
        LEAD(num, 1) OVER (ORDER BY id) AS next_num,
        LEAD(num, 2) OVER (ORDER BY id) AS next2_num
    FROM Logs
) t
WHERE next_id = id + 1
  AND next2_id = id + 2
  AND num = next_num
  AND num = next2_num;