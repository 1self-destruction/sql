SELECT m.pizza_name, p.name AS pizzeria_name , m.price
FROM menu m
INNER JOIN pizzeria p ON m.pizzeria_id = p.id
WHERE pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza'
ORDER BY m.pizza_name, pizzeria_name;
