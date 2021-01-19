SELECT e1.employee_id, COUNT(*) AS team_size
FROM Employee e1, Employee e2
WHERE e1.team_id = e2.team_id
GROUP BY e1.employee_id;
