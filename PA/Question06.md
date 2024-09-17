The Member table will have the following columns:

ID—positive integer
FirstName—variable-length string with up to 100 characters
MiddleInitial—fixed-length string with 1 character
LastName—variable-length string with up to 100 characters
DateOfBirth—date
AnnualPledge—positive decimal value representing a cost of up to $999,999, with 2 digits for cents
Write a SQL statement to create the Member table.

Do not add any additional constraints to any column beyond what is stated.

Answer:

CREATE TABLE Member (
    ID INT UNSIGNED,
    FirstName VARCHAR(100),
    MiddleInitial CHAR(1),
    LastName VARCHAR(100),
    DateOfBirth DATE,
    AnnualPledge DECIMAL(8, 2)
);

This one marked wrong for some reason(s).