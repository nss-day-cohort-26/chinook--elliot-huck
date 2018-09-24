SELECT 
	i.InvoiceId,
	i.InvoiceDate, i.BillingAddress,
	i.BillingCity, i.BillingState,
	i.BillingCountry, i.BillingPostalCode,
	COUNT(il.InvoiceLineId) AS 'Number of Line Items',
	'$'||i.Total
FROM Invoice i
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId;