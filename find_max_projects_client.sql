SELECT name, COUNT(id) 
FROM client 
GROUP BY name
HAVING COUNT(id) IN(
    SELECT COUNT(id)
    FROM client 
    GROUP BY name
    ORDER BY COUNT(id) DESC
    LIMIT 1
);