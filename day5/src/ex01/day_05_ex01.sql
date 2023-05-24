set ENABLE_SEQSCAN TO OFF;

SELECT pizza_name, pizzeria.name FROM menu
INNER JOIN pizzeria ON pizzeria.id= menu.pizzeria_id;

explain analyze select pizza_name, pizzeria.name FROM menu
INNER JOIN pizzeria ON pizzeria.id= menu.pizzeria_id;