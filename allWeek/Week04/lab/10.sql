SELECT customer_id, staff_id, MAX(amount) AS rental_amount FROM sakila.payment
WHERE amount > 10
GROUP BY staff_id
ORDER BY staff_id ASC;