SELECT DISTINCT name FROM person_order
INNER JOIN person ON person.id = person_order.person_id
order by name;