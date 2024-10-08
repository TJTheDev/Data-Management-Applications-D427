-- The database has three tables for tracking horse-riding lessons:

-- Horse with columns:

-- ID - primary key
-- RegisteredName
-- Breed
-- Height
-- BirthDate
-- Student with columns:

-- ID - primary key
-- FirstName
-- LastName
-- Street
-- City
-- State
-- Zip
-- Phone
-- EmailAddress
-- LessonSchedule with columns:

-- HorseID - partial primary key, foreign key references Horse(ID)
-- StudentID - foreign key references Student(ID)
-- LessonDateTime - partial primary key
-- Write a SELECT statement to create a lesson schedule for Feb 1, 2020 with the lesson date/time, student's first and last names, and the horse's registered name. Order the results in ascending order by lesson date/time, then by the horse's registered name. Make sure unassigned lesson times (student ID is NULL) appear in the results.

-- Hint: Perform a join on the LessonSchedule, Student, and Horse tables, matching the student IDs and horse IDs.

Select
   L.LessonDateTime,
   S.FirstName,
   S.LastName,
   H.RegisteredName
From
   LessonSchedule L
Left Join
   Student S on L.StudentID = S.ID
Left Join
   Horse H on L.HorseID = H.ID
Where
   L.LessonDateTime >= '2020-02-01 00:00:00'
   And L.LessonDateTime < '2020-02-02 00:00:00'
Order by
   L.LessonDateTime ASC,
   H.RegisteredName ASC;