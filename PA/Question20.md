The Movie table has the following columns:

ID—integer, primary key
Title—variable-length string
Genre—variable-length string
RatingCode—variable-length string
Year—integer
## Write a SQL query to display all Title values in alphabetical order A–Z.

Answer:
---
SELECT Title
FROM Movie
ORDER BY Title ASC;