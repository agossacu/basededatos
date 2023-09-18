UPDATE film 
SET rental_duration = 1
WHERE film_id in (SELECT film_id FROM film_category fc JOIN category c 
ON c.category_id = fc.category_id WHERE name like "action");