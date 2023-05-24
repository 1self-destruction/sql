SELECT pizza_name AS object_name FROM menu
UNION all
SELECT name AS object_name FROM person ORDER BY object_name;