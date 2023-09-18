INSERT into address (address, city_id)
VALUES("1328 Cornelia Street",(SELECT city_id from city WHERE city like "Rosario"))
INSERT into store (address_id)
SELECT address_id FROM address WHERE address like "%cornelia%";