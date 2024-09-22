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
