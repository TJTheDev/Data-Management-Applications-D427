-- The Horse table has the following columns:

-- ID - integer, auto increment, primary key
-- RegisteredName - variable-length string
-- Breed - variable-length string
-- Height - decimal number
-- BirthDate - date
-- Delete the following rows:

-- Horse with ID 5.
-- All horses with breed Holsteiner or Paint.
-- All horses born before March 13, 2013.

-- Delete From Horse
-- Where ID = 5;

-- Delete From Horse
-- Where Breed = 'Holsteiner';

-- Delete From Horse
-- Where Breed = 'Paint';

-- Delete From Horse
-- Where BirthDate < '2013-03-13';

Delete From Horse
Where ID = 5
Or Breed = 'Holsteiner'
Or Breed = 'Paint'
Or BirthDate < '2013-03-13';