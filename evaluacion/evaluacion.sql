
2)
INSERT into artists(name, ArtistId)
VALUES("delicate", "276")
INSERT into albums(Title, ArtistId, AlbumId)
VALUES("reputation", "276", "348")
INSERT into tracks (TrackId, Name, AlbumId, GenreId, Composer, Milliseconds, MediaTypeId, Bytes, UnitPrice)
VALUES("3504", "dress", "348", "9", "delicate", "74893", "1", "234432", "0.99")
INSERT into tracks (TrackId, Name, AlbumId, GenreId, Composer, Milliseconds, MediaTypeId, Bytes, UnitPrice)
VALUES("3505", "getaway car", "348", "9", "delicate", "745893", "1", "25334432", "0.99")
3)
UPDATE employees
SET Phone = fax,
    fax = Phone;
4)
DELETE FROM playlist_track WHERE TrackId IN (SELECT TrackId FROM tracks WHERE genreId IN(SELECT genreId
FROM tracks GROUP BY
genreId HAVING COUNT(genreId)<50));

DELETE FROM invoice_items WHERE trackId IN (SELECT trackId FROM tracks WHERE genreId IN(SELECT genreId
 FROM tracks GROUP BY
genreId HAVING COUNT(genreId)<50));

DELETE FROM tracks WHERE genreId IN (SELECT genreId FROM tracks GROUP BY
genreId HAVING COUNT(genreId)<50);

DELETE FROM genres WHERE genreId IN (SELECT genreId FROM tracks GROUP BY
genreId HAVING COUNT(genreId)<50);
5)
UPDATE employees SET reportsTo=EmployeeId WHERE ReportsTo IS NULL;
6)
DELETE FROM customers WHERE CustomerId NOT IN (SELECT DISTINCT CustomerId FROM invoices);