SELECT person_name
FROM (
    SELECT
        person_name,
        person_id,
        turn,
        total_weight,
        MAX(turn) OVER () AS max_turn
    FROM (
        SELECT
            person_name,
            person_id,
            turn,
            SUM(weight) OVER (ORDER BY turn) AS total_weight
        FROM Queue
    ) q1
    WHERE total_weight <= 1000
) q2
WHERE turn = max_turn;