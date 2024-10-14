-- Refer to the actor table of the Sakila database. The table in this lab has the same columns and data types but fewer rows.

-- Start a transaction and:

-- Insert a new actor with values 999, 'NICOLE', 'STREEP', '2021-06-01 12:00:00'
-- Set a SAVEPOINT.
-- Delete the actor with first name 'CUBA'.
-- Select all actors.
-- Roll back to the savepoint.
-- Select all actors a second time.
-- The actor with first name 'CUBA' should appear in the second SELECT but not the first.

-- NOTE: In submit-mode tests that generate multiple result tables, the results are merged. Although the tests run correctly, the results appear in one table.


-- Step 1: Start a transaction
START TRANSACTION;

-- Step 2: Insert a new actor
INSERT INTO actor (actor_id, first_name, last_name, last_update)
VALUES (999, 'NICOLE', 'STREEP', '2021-06-01 12:00:00');

-- Step 3: Set a SAVEPOINT
SAVEPOINT before_delete;

-- Step 4: Delete the actor with first name 'CUBA'
DELETE FROM actor WHERE first_name = 'CUBA';

-- Step 5: Select all actors to see the current state
SELECT * FROM actor;

-- Step 6: Roll back to the SAVEPOINT
ROLLBACK TO before_delete;

-- Step 7: Select all actors a second time to confirm 'CUBA' is back
SELECT * FROM actor;

-- Step 8: Commit the transaction (optional since rollback is done)
COMMIT;
