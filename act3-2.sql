UPDATE store SET manager_staff_id=(SELECT staff_id FROM staff WHERE first_name="jon");
UPDATE film SET rental_rate=rental_rate/2 WHERE film_id=(SELECT film_id FROM film_category fc 
JOIN category c ON fc.category_id=c.category_id WHERE name in ("Family", "Children") );
