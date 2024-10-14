-- The Movie table has the following columns:

-- ID—integer, primary key
-- Title—variable-length string
-- Genre—variable-length string
-- RatingCode—variable-length string
-- Year—integer
-- Write a SQL statement to create a view named MyMovies that contains the Title, Genre, and Year columns for all movies. Ensure your result set returns the columns in the order indicated.

CREATE VIEW MyMovies AS
SELECT Title, Genre, Year
From Movie