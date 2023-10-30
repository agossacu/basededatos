1) CREATE VIEW cuantas_pelis_rating as
SELECT COUNT(title) as peliculas, rating FROM film
GROUP BY rating 
2) CREATE VIEW pelis_en_categoria AS
SELECT COUNT(f.title) as peliculas, c.name as categoria FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY c.name
3) CREATE VIEW mas_pelis_actores as
SELECT count(f.film_id), a.first_name, a.last_name as apariciones 
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
GROUP BY a.actor_id
ORDER BY apariciones DESC
LIMIT 10
4) CREATE VIEW distintas_en_cada_local AS
SELECT COUNT(DISTINCT(i.film_id)), a.address as local, c.country as pais
FROM inventory i
JOIN store s ON i.store_id = s.store_id 
JOIN address a ON s.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country c ON ci.country_id = c.country_id
GROUP by local, pais
5) CREATE VIEW inventario_de_cada_local AS
SELECT count(i.film_id) as copias, a.address as local, c.country as pais
FROM inventory i
JOIN store s ON i.store_id = s.store_id 
JOIN address a ON s.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country c ON ci.country_id = c.country_id
GROUP by local, pais
6) CREATE VIEW peliculas_que_no_devolvieron AS
SELECT f.title, a.address, ci.city, c.country FROM film f
JOIN inventory i ON f.film_id = i.inventory_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN store s ON i.store_id = s.store_id 
JOIN address a ON s.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country c ON ci.country_id = c.country_id
WHERE return_date IS NULL
GROUP by ci.city, f.title, a.address, c.country
7) CREATE VIEW pelis_de1a2_horas AS
SELECT f.title, c.name as categoria, l.name as idioma, f.rating, f.length as duracion FROM film f
JOIN film_category fc ON fc.film_id = f.film_id
JOIN category c ON fc.category_id = c.category_id
JOIN language l ON f.language_id = l.language_id
8) CREATE VIEW Encargados AS
SELECT s.first_name, s.last_name, a.address, c.country, ci.city FROM staff s
JOIN address a ON s.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country c ON ci.country_id = c.country_id
9) CREATE VIEW promedio_de_pelis_por_categoria As
SELECT avg(f.rental_rate) as promedioxpeli, c.name from film f
JOIN film_category fc on f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
group by c.name