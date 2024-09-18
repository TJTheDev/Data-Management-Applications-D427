USE Mavenmovies;
SELECT
title, special_features
From
	film
Where special_features like "%Behind the Scene%"