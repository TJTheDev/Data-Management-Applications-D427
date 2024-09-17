The Movie table has the following columns:

ID—integer, primary key
Title—variable-length string
Genre—variable-length string
RatingCode—variable-length string
Year—integer
A new column must be added to the Movie table:

Column name: Score
Data type: decimal(3,1)
Write a SQL statement to add the Score column to the Movie table.

ALTER TABLE Movie
ADD Score DECIMAL(3,1);