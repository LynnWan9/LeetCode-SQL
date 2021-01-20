WITH cte AS(
SELECT 
    machine_id, 
    process_id,
    MAX(timestamp) - MIN(timestamp) AS process_time
FROM Activity
GROUP BY 1, 2)

SELECT 
    machine_id,
    ROUND(AVG(process_time), 3) AS processing_time
FROM cte
GROUP BY machine_id;
