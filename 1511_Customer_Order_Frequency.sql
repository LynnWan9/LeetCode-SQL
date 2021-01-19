SELECT DISTINCT o.customer_id, c.name
FROM Customers c
JOIN Product p
JOIN Orders o
ON c.customer_id = o.customer_id
    AND p.product_id = o.product_id
WHERE MONTH(order_date) = 6 
    AND YEAR(order_date) = 2020
    AND o.customer_id IN (
        SELECT o.customer_id
        FROM Customers c
        JOIN Product p
        JOIN Orders o
        ON c.customer_id = o.customer_id
            AND p.product_id = o.product_id
        WHERE MONTH(order_date) = 7 AND YEAR(order_date) = 2020
        GROUP BY o.customer_id
        HAVING SUM(price * quantity) >= 100)
GROUP BY o.customer_id
HAVING SUM(price * quantity) >= 100;
