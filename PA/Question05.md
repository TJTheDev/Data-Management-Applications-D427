How would a database engine process an update that violates a RESTRICT referential integrity constraint?

Answers:
The offending value would be set to the database default.
The update would be rejected by the database. (Correct)
The offending value would be changed to NULL.
The updated value would flow to the primary key.