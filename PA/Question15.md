The Movie table has the following columns:
ID—integer, primary key
Title—variable-length string
Genre—variable-length string
RatingCode—variable-length string
Year—integer
## Write a SQL query to retrieve the Title and Genre values for all records in the Movie table with a Year value of 2020. Ensure your result set returns the columns in the order indicated.

Answer:
---
SELECT Title, Genre
FROM Movie
WHERE Year = 2020;