-- The Rating table has the following columns:

-- RatingCode—variable-length string, primary key
-- RatingDescription—variable-length string
-- The Movie table should have the following columns:

-- Title—variable-length string, maximum 30 characters
-- RatingCode—variable-length string, maximum 5 characters
-- Write a SQL statement to create the Movie table. Designate the RatingCode column in the Movie table as a foreign key to the RatingCode column in the Rating table.

Create Table Movie(
   Title VARCHAR(30),
   RatingCode VARCHAR(5),
   FOREIGN Key (RatingCode)
   References Rating (RatingCode)
)