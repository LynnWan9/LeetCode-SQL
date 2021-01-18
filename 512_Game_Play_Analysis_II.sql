SELECT a.player_id, a.device_id
FROM Activity a
JOIN (SELECT player_id, MIN(event_date) AS first_login
      FROM Activity
      GROUP BY player_id) b 
ON a.player_id = b.player_id
AND a.event_date = b.first_login;
