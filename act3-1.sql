UPDATE film 
SET language_id = (SELECT language_id FROM language WHERE name like "japo%")
WHERE film_id in (SELECT film_id FROM film_category fc JOIN category c 
ON c.category_id = fc.category_id WHERE name like "animation");
	