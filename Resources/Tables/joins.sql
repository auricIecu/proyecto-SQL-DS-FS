SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;


SELECT *
FROM artists
INNER JOIN albums ON artists.ArtistId = albums.ArtistId
INNER JOIN tracks ON albums.AlbumId = tracks.AlbumId
WHERE artists.name = 'AC/DC';

/* Hay que relacionar 3 tablas= artists, albums y tracks con las claves foráneas*/