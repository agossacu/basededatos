/*2) Mostrar los títulos de los discos de "Deep Purple"*/
SELECT Title FROM albums 
WHERE AlbumId in (SELECT AlbumId FROM albums al
JOIN artists a ON a.ArtistId =  al.ArtistId
WHERE name like "%Deep Purple");