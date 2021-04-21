SELECT customer_id, sum(amount) AS sum_amount FROM sakila.payment
WHERE customer_id = 1
GROUP BY customer_id;