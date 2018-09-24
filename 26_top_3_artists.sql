SELECT 
	ar.Name AS 'Artist',
	SUM(il.Quantity) AS 'Tracks Sold'
FROM Artist ar
JOIN Album al ON ar.ArtistId = al.ArtistId
JOIN Track t ON al.AlbumId = t.AlbumId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY ar.Name
ORDER BY SUM(il.Quantity) DESC
LIMIT 3;