SELECT rating, AVG(length) AS avg_length FROM sakila.film
GROUP BY rating;