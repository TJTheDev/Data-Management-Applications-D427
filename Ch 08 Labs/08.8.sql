-- The Movie table has the following columns:

-- ID—integer, primary key
-- Title—variable-length string
-- Genre—variable-length string
-- RatingCode—variable-length string
-- Year—integer
-- Write a SQL statement to create an index named idx_year on the Year column of the Movie table.

CREATE INDEX idx_year on Movie (year)