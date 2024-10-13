The Movie table has the following columns:

ID—integer
Title—variable-length string
Genre—variable-length string
RatingCode—variable-length string
Year—integer
## Write a SQL statement to modify the Movie table to make the ID column the primary key.

Answer:
---
ALTER TABLE Movie
ADD CONSTRAINT PRIMARY KEY (ID);