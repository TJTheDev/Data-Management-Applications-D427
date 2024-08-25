-- The Employee table has the following columns:

-- ID - integer, primary key
-- FirstName - variable-length string
-- LastName - variable-length string
-- ManagerID - integer
-- Write a SELECT statement to show a list of all employees' first names and their managers' first names. List only employees that have a manager. Order the results by Employee first name. Use aliases to give the result columns distinctly different names, like "Employee" and "Manager".

-- Hint: Join the Employee table to itself using INNER JOIN.

SELECT 
    E.FirstName AS Employees, 
    M.FirstName AS Managers
FROM 
    Employee E
INNER JOIN 
    Employee M ON E.ManagerID = M.ID
WHERE 
    E.ManagerID IS NOT NULL
ORDER BY 
    E.FirstName;