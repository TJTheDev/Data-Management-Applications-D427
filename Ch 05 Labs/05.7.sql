-- 5.7 LAB - Query execution plans (Sakila)
-- This lab illustrates how minor changes in a query may have a significant impact on the execution plan.

-- MySQL Workbench exercise
-- Refer to the film, actor, and film_actor tables of the Sakila database. This exercise is based on the initial Sakila installation. If you have altered these tables or their data, your results may be different.

-- Do the following in MySQL Workbench:

-- Enter the following statements:
-- USE sakila;

-- SELECT last_name, first_name, ROUND(AVG(length), 0) AS average
-- FROM actor
-- INNER JOIN film_actor ON film_actor.actor_id = actor.actor_id
-- INNER JOIN film ON film_actor.film_id = film.film_id
-- WHERE title = "ALONE TRIP"
-- GROUP BY last_name, first_name
-- ORDER BY average;
-- Highlight the SELECT query.
-- In the main menu, select Query > Explain Current Statement.
-- In the Display Info box, highlighted in red below, select Data Read per Join.
-- Workbench displays the following execution plan:

-- Image is a screenshot of Workbench. The SELECT query described in the lab instructions is highlighted. Below the SELECT query is a flowchart diagram, representing an execution plan for the SELECT query. The flowchart contains boxes and diamonds labeled 1 through 7. Box 1 has four labels: 1 row, Non-Unique Key Lookup, film, and idx_title. Box 2 has four labels: 5 rows, Non-Unique Key Lookup, film_actor, and idx_fk_film_id. Diamond 3 has two labels: 5 rows, and nested loop. Arrows from boxes 1 and 2 point to diamond 3. Box 4 has four labels: 1 row, Unique Key Lookup, actor, and PRIMARY. Diamond 5 has two labels: 5 rows, and nested loop. Arrows from diamond 3 and box 4 point to diamond 5. Box 6 has two labels: GROUP, and tmp table. Box 7 has two labels: ORDER and filesort. An arrow from box 6 points to box 7. An arrow from box 7 points to an unnumbered box with two labels: Query cost 3.07, and query_block #1.

-- The execution plan depicts the result of EXPLAIN for the SELECT query. The execution plan has seven steps, corresponding to the red numbers on the screenshot:

-- Access a single film row using the idx_title index on the title column.
-- Access matching film_actor rows using the idx_fk_film_id index on the film_id foreign key.
-- Join the results using the nested loop algorithm.
-- Access actor rows via the index on the primary key.
-- Join actor rows with the prior join result using the nested loop algorithm.
-- Store the result in a temporary table and compute the aggregate function.
-- Sort and generate the result table.
-- Refer to MySQL nested loop documentation for an explanation of the nested loop algorithm.

-- Now, replace = in the WHERE clause with < and generate a new execution plan. Step 1 of the execution plan says Index Range Scan. The index scan accesses all films with titles preceding "ALONE TRIP", rather than a single film.

-- Finally, replace < in the WHERE clause with > and generate a third execution plan. Step 1 of the execution plan says Full Table Scan and accesses actor rather than film.



-- Step 2: Check the number of rows in the relevant tables
-- SELECT COUNT(*) AS film_count FROM film;
-- SELECT COUNT(*) AS actor_count FROM actor;
-- SELECT COUNT(*) AS film_actor_count FROM film_actor;

-- -- Step 3: Run the original query to check if it returns results
-- SELECT last_name, first_name, ROUND(AVG(length), 0) AS average
-- FROM actor
-- INNER JOIN film_actor ON film_actor.actor_id = actor.actor_id
-- INNER JOIN film ON film_actor.film_id = film.film_id
-- WHERE title = "ALONE TRIP"
-- GROUP BY last_name, first_name
-- ORDER BY average;

-- Step 4: If the query above returns results, use EXPLAIN
EXPLAIN SELECT last_name, first_name, ROUND(AVG(length), 0) AS average
FROM actor
INNER JOIN film_actor ON film_actor.actor_id = actor.actor_id
INNER JOIN film ON film_actor.film_id = film.film_id
WHERE title = "ALONE TRIP"
GROUP BY last_name, first_name
ORDER BY average;

-- -- Step 5: Modify the WHERE clause to check for other titles
-- SELECT DISTINCT title FROM film;

-- -- Step 6: Test with < and >
-- SELECT last_name, first_name, ROUND(AVG(length), 0) AS average
-- FROM actor
-- INNER JOIN film_actor ON film_actor.actor_id = actor.actor_id
-- INNER JOIN film ON film_actor.film_id = film.film_id
-- WHERE title < "ALONE TRIP"
-- GROUP BY last_name, first_name
-- ORDER BY average;

EXPLAIN SELECT last_name, first_name, ROUND(AVG(length), 0) AS average
FROM actor
INNER JOIN film_actor ON film_actor.actor_id = actor.actor_id
INNER JOIN film ON film_actor.film_id = film.film_id
WHERE title < "ALONE TRIP"
GROUP BY last_name, first_name
ORDER BY average;

-- SELECT last_name, first_name, ROUND(AVG(length), 0) AS average
-- FROM actor
-- INNER JOIN film_actor ON film_actor.actor_id = actor.actor_id
-- INNER JOIN film ON film_actor.film_id = film.film_id
-- WHERE title > "ALONE TRIP"
-- GROUP BY last_name, first_name
-- ORDER BY average;

EXPLAIN SELECT last_name, first_name, ROUND(AVG(length), 0) AS average
FROM actor
INNER JOIN film_actor ON film_actor.actor_id = actor.actor_id
INNER JOIN film ON film_actor.film_id = film.film_id
WHERE title > "ALONE TRIP"
GROUP BY last_name, first_name
ORDER BY average;