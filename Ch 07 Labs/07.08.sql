-- Create a Horse table with the following columns, data types, and constraints. NULL is allowed unless 'not NULL' is explicitly stated.

-- ID - integer with range 0 to 65535, auto increment, primary key

-- RegisteredName - variable-length string with max 15 chars, not NULL

-- Breed - variable-length string with max 20 chars, must be one of the following: Egyptian Arab, Holsteiner, Quarter Horse, Paint, Saddlebred

-- Height - number with 3 significant digits and 1 decimal place, must be ≥ 10.0 and ≤ 20.0

-- BirthDate - date, must be ≥ Jan 1, 2015

CREATE Table Horse (
   ID SMALLINT Unsigned Auto_Increment Primary Key,
   RegisteredName VarChar(15) Not Null,
   Breed VarChar(20) Check (Breed In ('Egyptian Arab', 'Holsteiner', 'Quarter Horse', 'Paint', 'Saddlebred')),
   Height Decimal (3,1) Check (Height Between 10.0 and 20.0),
   BirthDate Date Check ( BirthDate >= '2015-01-01')
)