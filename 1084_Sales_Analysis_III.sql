SELECT DISTINCT p.product_id, p.product_name
FROM Sales s
JOIN Product p USING (product_id)
GROUP BY p.product_id
HAVING SUM(CASE WHEN sale_date BETWEEN '2019-01-01' AND '2019-03-31' THEN 0 ELSE 1 END) = 0;
