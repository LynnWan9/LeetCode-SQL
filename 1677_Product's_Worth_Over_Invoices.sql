SELECT 
    name,
    SUM(rest) AS rest,
    SUM(paid) AS paid,
    SUM(canceled) AS canceled,
    SUM(refunded) AS refunded
FROM Product p
JOIN Invoice i ON p.product_id = i.product_id
GROUP BY p.product_id
ORDER BY 1;
