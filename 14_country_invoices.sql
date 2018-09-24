SELECT 
	i.BillingCountry AS 'Country', 
	COUNT(i.InvoiceId) AS 'Number of Invoices'
FROM Invoice i
GROUP BY i.BillingCountry;