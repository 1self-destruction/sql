SELECT person.name FROM 
    (SELECT person_order.person_id FROM person_order 
INNER JOIN menu ON person_order.menu_id = menu.id
    WHERE menu.pizza_name = 'cheese pizza'
INTERSECT
    SELECT person_order.person_id FROM person_order
INNER JOIN menu ON person_order.menu_id = menu.id
    WHERE menu.pizza_name = 'pepperoni pizza') tmp
INNER JOIN person ON tmp.person_id = person.id
    WHERE person.gender = 'female'
ORDER BY person.name ASC;