-- The Movie table has the following columns:

-- ID—integer, primary key, auto-increment
-- Title—variable-length string
-- Genre—variable-length string
-- RatingCode—variable-length string
-- Year—integer
-- The following data needs to be added to the Movie table:

-- Title	Genre	RatingCode	Year
-- Pride and Prejudice	Romance	G	2005
-- Write a SQL statement to insert the indicated data into the Movie table.

INSERT into Movie (Title, Genre, RatingCode, Year)
Values ("Pride and Prejudice", "Romance", "G", 2005)