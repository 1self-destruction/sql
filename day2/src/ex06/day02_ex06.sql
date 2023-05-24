SELECT pizza_name, pizzeria.name AS pizzeria_name FROM person_order
INNER JOIN menu ON person_order.menu_id = menu.id
INNER JOIN person ON person.id = person_order.person_id
INNER JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE person.name = 'Denis' OR person.name = 'Anna'
ORDER BY pizza_name ASC, pizzeria_name ASC;