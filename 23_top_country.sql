SELECT 
i.BillingCountry AS 'Country with Most Sales',
'$'||SUM(i.Total) AS 'Total Sales'
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY SUM(i.Total) DESC
LIMIT 1;