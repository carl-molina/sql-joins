-- write your queries here

-- #1
SELECT *
FROM owners
LEFT JOIN vehicles AS v
ON v.owner_id = owners.id
ORDER BY owners.id ASC;


-- #2
SELECT first_name, COUNT(*)
FROM vehicles
INNER JOIN owners
ON owners.id = vehicles.owner_id
GROUP BY first_name
vehicles-# ORDER BY first_name ASC;

-- #3
SELECT first_name, ROUND(AVG(price)), COUNT(*)
FROM vehicles
INNER JOIN owners as o
ON vehicles.owner_id = o.id
GROUP BY first_name
HAVING AVG(vehicles.price) > 10000 AND COUNT(*) > 1
ORDER BY first_name DESC;