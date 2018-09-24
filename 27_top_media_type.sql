SELECT
	m.Name AS 'Most Purchased Media Type',
	SUM(il.Quantity) AS NumberPurchased
FROM MediaType m
JOIN Track t ON m.MediaTypeId = t.MediaTypeId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY m.Name
ORDER BY NumberPurchased DESC
LIMIT 1;