SELECT menu.pizza_name, menu.price, pizzeria.name AS pizzeria_name, person_visits.visit_date
FROM person_visits
INNER JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
INNER JOIN menu ON pizzeria.id = menu.pizzeria_id
INNER JOIN person ON person.id = person_visits.person_id
WHERE person.name = 'Kate' AND (menu.price >= 800 AND menu.price <= 1000)
ORDER BY menu.pizza_name, menu.price, pizzeria_name;