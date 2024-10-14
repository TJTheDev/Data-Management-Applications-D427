USE Mavenmovies;
SELECT
customer_id, rental_id, amount, payment_date
From
	payment
Where amount > 5.00
	or customer_id = 42
	or customer_id = 53
    or customer_id = 60
    or customer_id = 75