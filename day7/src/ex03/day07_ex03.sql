WITH visit_table AS (
	SELECT piz.name, COUNT(*) AS count FROM person_visits pv
	INNER JOIN pizzeria piz on piz.id = pv.pizzeria_id
	GROUP BY piz.name
),  order_table AS (
    SELECT piz1.name, COUNT(*) AS count FROM person_order po
	INNER JOIN menu m ON m.id = po.menu_id
	INNER JOIN pizzeria piz1 on piz1.id = m.pizzeria_id
	GROUP BY piz1.name
)
SELECT name, count AS total_count
FROM (SELECT COALESCE(ot.name, vt.name) AS name,
	 (COALESCE(vt.count, 0) + COALESCE(ot.count, 0)) AS count
	 FROM visit_table vt
	 FULL OUTER JOIN order_table ot ON vt.name = ot.name) stat
ORDER BY total_count DESC, name ASC;