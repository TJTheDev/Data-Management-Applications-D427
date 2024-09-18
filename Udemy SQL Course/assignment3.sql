USE Mavenmovies;
SELECT
customer_id, rental_id, amount, payment_date
From
	payment
Where 
customer_id <= 100
Order by
	customer_id ASC