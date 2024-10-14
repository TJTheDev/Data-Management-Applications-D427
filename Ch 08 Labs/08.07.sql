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
-- Write a SQL statement to designate the Year column in the Movie table as a foreign key to the Year column in the YearStats table.

ALTER TABLE Movie
ADD FOREIGN KEY (Year) References YearStats (Year)