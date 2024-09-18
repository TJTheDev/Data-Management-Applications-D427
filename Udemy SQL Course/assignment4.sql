USE Mavenmovies;
SELECT
customer_id, rental_id, amount, payment_date
From
	payment
Where 
customer_id <= 100
	and amount >= 5.00
	and payment_date >= "2006-01-01"