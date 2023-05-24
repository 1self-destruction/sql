SELECT person.name, COUNT(*) AS count_of_visits FROM person_visits
INNER JOIN person ON person_visits.person_id = person.id
GROUP by person.name HAVING COUNT(*) > 3;