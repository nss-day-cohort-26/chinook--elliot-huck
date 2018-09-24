SELECT
	t.Name AS 'Track',
	SUM(il.Quantity) AS 'Times Purchased'
FROM Track t, InvoiceLine il, Invoice i
WHERE t.TrackId = il.TrackId
AND i.InvoiceId = il.InvoiceId
GROUP BY t.Name
ORDER BY SUM(il.Quantity) DESC
LIMIT 5;