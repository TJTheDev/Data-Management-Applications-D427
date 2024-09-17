The Rating table has the following columns:

RatingCode—variable-length string, primary key
RatingDescription—variable-length string
The Movie table should have the following columns:

Title—variable-length string, maximum 30 characters
RatingCode—variable-length string, maximum 5 characters
Write a SQL statement to create the Movie table. Designate the RatingCode column in the Movie table as a foreign key to the RatingCode column in the Rating table.

Answer:

CREATE TABLE Movie (
    Title VARCHAR(30),
    RatingCode VARCHAR(5),
    CONSTRAINT fk_ratingcode FOREIGN KEY (RatingCode)
        REFERENCES Rating(RatingCode)
);

This one marked wrong for some reason(s).