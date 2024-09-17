The Movie table has the following columns:

ID—integer, primary key
Title—variable-length string
Genre—variable-length string
RatingCode—variable-length string
Year—integer
## Write a SQL query to output the unique RatingCode values and the number of movies with each rating value from the Movie table as RatingCodeCount. Sort the results by the RatingCode in alphabetical order A–Z. Ensure your result set returns the columns in the order indicated.

Answer:
---
SELECT RatingCode, COUNT(*) AS RatingCodeCount
FROM Movie
GROUP BY RatingCode
ORDER BY RatingCode ASC;