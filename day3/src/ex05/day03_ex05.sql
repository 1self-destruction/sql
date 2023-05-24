SELECT pizzeria.name AS pizzeria_name FROM person_visits
INNER JOIN person ON person.id = person_visits.person_id
INNER JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
LEFT JOIN person_order ON person_visits.visit_date = person_order.order_date
WHERE person_order.order_date IS NULL AND person.name = 'Andrey'
ORDER BY pizzeria_name;