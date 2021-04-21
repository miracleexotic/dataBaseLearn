SELECT first_name, count(customer_id) as number_customer FROM sakila.customer
WHERE first_name LIKE 'A%' OR first_name LIKE '%A';