SELECT * FROM sakila.rental
WHERE return_date BETWEEN '2005-05-25' AND '2005-05-27'
ORDER BY return_date DESC
LIMIT 5;