-- The Movie table has the following columns:

-- ID—integer, primary key
-- Title—variable-length string
-- Genre—variable-length string
-- RatingCode—variable-length string
-- Year—integer
-- Write a SQL query to return how many movies have a Year value of 2019.

Select Count(Year) as "Year Count"
from Movie
Where 
   Year = 2019