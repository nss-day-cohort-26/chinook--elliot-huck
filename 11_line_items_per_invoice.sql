SELECT i.InvoiceId AS 'Invoice Id',
COUNT(il.InvoiceLineId) AS 'Line Items'
FROM Invoice i
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId;