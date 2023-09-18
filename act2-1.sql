INSERT into city (city,country_id)
VALUES("Rosario",(SELECT country_id from country WHERE country like "argentina")),
	  ("Rawson",(SELECT country_id from country WHERE country like "argentina")),
	  ("Salta",(SELECT country_id from country WHERE country like "argentina"));