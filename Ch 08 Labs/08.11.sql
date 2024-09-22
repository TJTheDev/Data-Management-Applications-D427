-- The Movie table has the following columns:

-- ID—integer, primary key
-- Title—variable-length string
-- Genre—variable-length string
-- RatingCode—variable-length string
-- Year—integer
-- Write a SQL statement to update the Year value to be 2022 for all movies with a Year value of 2020.

Update Movie
Set Year = 2022
Where Year = 2020