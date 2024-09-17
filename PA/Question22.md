## Which query illustrates performing an outer join of the Movie table with a different table?

Answer:
---
- SELECT M.Title, A.Actor FROM Movie M, Actor A WHERE M.ActorID = A.ID
- SELECT M.Title, A.Actor FROM Movie M LEFT JOIN Movie MB ON M.ID MB.ID, Actor A
- SELECT M.Title, A.Actor FROM Movie M RIGHT JOIN Actor A ON M.ActorID = A.ID
- SELECT M.Title, A.Actor FROM Movie M INNER JOIN Actor A ON M.ActorID = A.ID

### The correct answer is Left Join 