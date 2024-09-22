-- Create a Student table with the following column names, data types, and constraints:

-- ID - integer with range 0 to 65 thousand, auto increment, primary key

-- FirstName - variable-length string with max 20 chars, not NULL

-- LastName - variable-length string with max 30 chars, not NULL

-- Street - variable-length string with max 50 chars, not NULL

-- City - variable-length string with max 20 chars, not NULL

-- State - fixed-length string of 2 chars, not NULL, default "TX"

-- Zip - integer with range 0 to 16 million, not NULL

-- Phone - fixed-length string of 10 chars, not NULL

-- Email - variable-length string with max 30 chars, must be unique

CREATE TABLE Student(
   ID SMALLINT Unsigned AUTO_INCREMENT Primary Key,
   FirstName VARCHAR(20) Not NULL,
   LastName VARCHAR(30) Not Null,
   Street VarChar(50) Not Null,
   City VARCHAR(20) Not NULL,
   State CHAR(2) Not Null Default 'TX',
   Zip MediumInt Unsigned NOT NULL,
   Phone CHAR(10) Not Null,
   Email VarChar(30) Unique
)