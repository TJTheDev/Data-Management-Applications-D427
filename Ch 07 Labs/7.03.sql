-- The Horse table has the following columns:

-- ID - integer, auto increment, primary key
-- RegisteredName - variable-length string
-- Breed - variable-length string, must be one of the following: Egyptian Arab, Holsteiner, Quarter Horse, Paint, Saddlebred
-- Height - decimal number, must be ≥ 10.0 and ≤ 20.0
-- BirthDate - date, must be ≥ Jan 1, 2015
-- Make the following updates:

-- Change the height to 15.6 for horse with ID 2.
-- Change the registered name to Lady Luck and birth date to May 1, 2015 for horse with ID 4.
-- Change every horse breed to NULL for horses born on or after December 22, 2016.

Update Horse
Set Height = 15.6
Where ID = 2;

Update Horse
Set RegisteredName = 'Lady Luck', BirthDate = '2015-05-01'
Where ID = 4;

Update Horse
Set Breed = Null
Where BirthDate >= '2016-12-22';