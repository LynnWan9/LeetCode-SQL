SELECT MAX(num) AS num
FROM (SELECT num, COUNT(*) AS counts
      FROM my_numbers n
      GROUP BY num) c
WHERE counts = 1;

SELECT MAX(num) AS num
FROM (SELECT num
      FROM my_numbers
      GROUP BY num
      HAVING COUNT(num) = 1) c;
