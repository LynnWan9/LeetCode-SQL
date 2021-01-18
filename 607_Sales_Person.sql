SELECT name
FROM salesperson
WHERE sales_id NOT IN (SELECT DISTINCT sales_id
                       FROM orders o
                       JOIN company c USING (com_id)
                       WHERE c.name = "RED");
