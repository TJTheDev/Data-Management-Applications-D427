The Movie table has the following columns:

ID—integer, primary key
Title—variable-length string
Genre—variable-length string
RatingCode—variable-length string
Year—integer
Write a SQL statement to delete the row with the ID value of 3 from the Movie table.

Answer:

DELETE FROM Movie
WHERE ID = 3;