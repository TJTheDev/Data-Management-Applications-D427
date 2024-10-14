-- 5.5 LAB - Create index and explain (Sakila)
-- This lab illustrates the use of indexes and EXPLAIN to optimize query performance. Refer to EXPLAIN documentation for information about EXPLAIN result columns.

-- Refer to the film table of the Sakila database. Write and run seven SQL statements:

-- Explain the query SELECT * FROM film WHERE title = 'ALONE TRIP';.

-- In the EXPLAIN result, column key is null, indicating no index is available for the query. Column rows is 100, indicating all rows are read. The query executes a table scan and is slow.

-- Create an index idx_title on the title column.

-- Explain the query of step 1 again.

-- In the EXPLAIN result, column key has value idx_title, indicating the query uses the index on title. Column rows is 1, indicating only one table row is read. The query is fast.

-- Explain the query SELECT * FROM film WHERE title > 'ALONE TRIP';.

-- In the EXPLAIN result, column key is null, indicating the query does not use the idx_title index. Column rows is 100, indicating all rows are read. Since the query has > in the WHERE clause rather than =, the query executes a table scan and is slow.

-- Explain the query SELECT rating, count(*) FROM film GROUP BY rating;

-- In the EXPLAIN result, column key is null, indicating no index is available for the query. Column rows is 100, indicating all rows are read. The query executes a table scan and is slow.

-- Create an index idx_rating on the rating column.

-- Explain the query of step 5 again.

-- In the EXPLAIN result, column key has value idx_rating, indicating the query reads rating values from the index. The query uses an index scan, which is faster than a table scan (step 5).

-- For submit-mode testing, all seven statements must appear in Main.sql in the correct order.

-- NOTES:

-- SELECT * FROM film; generates too many characters to display in the zyLab environment. However, statements with less output, such as SELECT title FROM film;, execute successfully.

-- If you try this lab in MySQL Workbench, drop the index idx_title from film prior to executing statement 1.

-- In submit-mode tests that generate multiple result tables, the results are merged. Although the tests run correctly, the results appear in one table.


-- Step 1: Explain the initial query without an index
EXPLAIN SELECT * FROM film WHERE title = 'ALONE TRIP';

-- Step 2: Create an index on the title column
CREATE INDEX idx_title ON film(title);

-- Step 3: Explain the query again after creating the index
EXPLAIN SELECT * FROM film WHERE title = 'ALONE TRIP';

-- Step 4: Explain the query with a range condition
EXPLAIN SELECT * FROM film WHERE title > 'ALONE TRIP';

-- Step 5: Explain the query that groups by rating
EXPLAIN SELECT rating, COUNT(*) FROM film GROUP BY rating;

-- Step 6: Create an index on the rating column
CREATE INDEX idx_rating ON film(rating);

-- Step 7: Explain the query again after creating the index on rating
EXPLAIN SELECT rating, COUNT(*) FROM film GROUP BY rating;