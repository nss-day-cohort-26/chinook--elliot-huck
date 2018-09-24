SELECT 
	i.BillingCountry,
	'$'||SUM(i.Total) AS 'Total Sales'
FROM Invoice i
GROUP BY i.BillingCountry;