-- write your queries here

-- #1
SELECT *
FROM owners
LEFT JOIN vehicles AS v
-- ^FIXME: FULL JOIN here instead
ON v.owner_id = owners.id
ORDER BY owners.id ASC;


-- #2
SELECT first_name, COUNT(*)
FROM vehicles
INNER JOIN owners
ON owners.id = vehicles.owner_id
GROUP BY first_name
-- ^FIXME: GROUP BY id here to be specific per ID
ORDER BY first_name ASC;

-- #3
SELECT first_name, ROUND(AVG(price)), COUNT(*)
FROM vehicles
    INNER JOIN owners AS o
        ON vehicles.owner_id = o.id
        -- ^ proper indentation for readability
GROUP BY first_name
-- ^ FIXME: GROUP BY ID here to be specific per id
HAVING AVG(vehicles.price) > 10000
    AND COUNT(*) > 1
    -- ^ better readability
ORDER BY first_name DESC;