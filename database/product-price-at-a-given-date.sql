SELECT Products.product_id, new_price AS price FROM Products
JOIN( SELECT  product_id, MAX(change_date) AS change_date FROM Products
WHERE change_date <= '2019-08-16' 
GROUP BY product_id
) s ON
s.product_id = Products.product_id
AND 
s.change_date = Products.change_date
WHERE Products.change_date <= '2019-08-16' 
GROUP BY Products.product_id,new_price
UNION
SELECT product_id, 10 AS price FROM Products
WHERE change_date > '2019-08-16'
AND product_id NOT IN (
    SELECT product_id FROM Products
    WHERE change_date <= '2019-08-16'
)






