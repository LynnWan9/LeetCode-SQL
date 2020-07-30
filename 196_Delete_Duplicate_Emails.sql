DELETE
FROM Person
WHERE Id NOT IN (
    SELECT Id1
    FROM (
        SELECT MIN(Id) AS Id1, Email
        FROM Person
        GROUP BY Email) p1);
