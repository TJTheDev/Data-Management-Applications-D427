-- The Movie table has the following columns:

-- ID—integer, primary key
-- Title—variable-length string
-- Genre—variable-length string
-- RatingCode—variable-length string
-- Year—integer
-- The YearStats table has the following columns:

-- Year—integer
-- TotalGross—bigint unsigned
-- Releases—integer
-- Write a SQL query to display both the Title and the TotalGross (if available) for all movies. Ensure your result set returns the columns in the order indicated.

SELECT M.Title, Y.TotalGross
From Movie M
Left Join
   YearStats Y on M.Year = Y.Year

