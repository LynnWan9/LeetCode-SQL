SELECT DISTINCT buyer_id
FROM Sales
JOIN Product USING (product_id)
WHERE product_name = "S8" 
    AND buyer_id NOT IN (
        SELECT buyer_id
        FROM Sales
        JOIN Product USING (product_id)
        WHERE product_name = "iPhone"
        );
