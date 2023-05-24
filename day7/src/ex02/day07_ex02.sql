SELECT name, count, action_type
FROM ((SELECT piz.name, COUNT(*) AS count, 'visit' AS action_type
	   FROM person_visits pv 
	   INNER JOIN pizzeria piz on piz.id = pv.pizzeria_id
	   GROUP BY piz.name ORDER BY count DESC LIMIT 3)
	  	 UNION ALL
	   (SELECT piz.name, COUNT(*) AS count, 'order' AS action_type
	    FROM person_order po
		INNER JOIN menu m1 ON m1.id = po.menu_id
		INNER JOIN pizzeria piz on piz.id = m1.pizzeria_id
		GROUP BY piz.name ORDER BY count DESC LIMIT 3)) stat
ORDER BY action_type ASC, count DESC;