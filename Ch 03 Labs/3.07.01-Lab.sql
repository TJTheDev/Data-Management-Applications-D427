-- Refer to the film and inventory tables of the Sakila database. The tables in this lab have the same columns and data types but fewer rows.

-- Write a query that lists the titles of films with the fewest rows in the inventory table.

-- This query requires a subquery that computes the minimum of counts by film_id:

-- SELECT MIN(count_film_id) 
-- FROM ( SELECT COUNT(film_id) AS count_film_id
--        FROM inventory
--        GROUP BY film_id ) 
-- AS temp_table;
-- This subquery is provided in the template.

SELECT f.title
FROM film f
WHERE f.film_id IN (
    SELECT film_id
    FROM inventory
    GROUP BY film_id
    HAVING COUNT(film_id) = (
        SELECT MIN(count_film_id)
        FROM (
            SELECT COUNT(film_id) AS count_film_id
            FROM inventory
            GROUP BY film_id
        ) AS temp_table
    )
);