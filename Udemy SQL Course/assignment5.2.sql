USE Mavenmovies;
SELECT
customer_id, rental_id, amount, payment_date
From
	payment
Where amount > 5.00
	or customer_id IN (42,53,60,75)