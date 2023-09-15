/*Calcular el promedio de lo que gastan los usuarios en el sistema*/
SELECT avg(total) as promedio FROM (SELECT sum(total) as Total, CustomerId FROM invoices GROUP BY CustomerId);