-- Create a Movie table with the following columns:

-- ID - positive integer with maximum value of 65,535
-- Title - variable-length string with up to 50 characters
-- Rating - fixed-length string with 4 characters
-- ReleaseDate - date
-- Budget - decimal value representing a cost of up to 999,999 dollars, with 2 digits for cents

Create Table Movie (
ID SMALLINT Unsigned,
Title VARCHAR(50),
Rating CHAR(4),
ReleaseDate DATE,
Budget Decimal (8,2))