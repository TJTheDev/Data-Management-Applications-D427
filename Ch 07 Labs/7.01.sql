-- The Movie table has the following columns:

-- ID - positive integer
-- Title - variable-length string
-- Genre - variable-length string
-- RatingCode - variable-length string
-- Year - integer
-- Write ALTER statements to make the following modifications to the Movie table:

-- Add a Producer column with VARCHAR data type (max 50 chars).
-- Remove the Genre column.
-- Change the Year column's name to ReleaseYear, and change the data type to SMALLINT.

Alter Table Movie
   ADD COLUMN Producer VARCHAR(50),
   Drop Genre,
   CHANGE Year ReleaseYear SMALLINT