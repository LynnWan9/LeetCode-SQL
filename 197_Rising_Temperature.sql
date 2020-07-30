SELECT w2.Id
FROM Weather w1
JOIN Weather w2 
    ON DATE_ADD(w1.RecordDate, INTERVAL 1 DAY) = w2.RecordDate
WHERE w1.Temperature < w2.Temperature;
