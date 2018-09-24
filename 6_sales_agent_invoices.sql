SELECT 
sa.LastName || ", " || sa.FirstName AS 'Sales Agent',
i.InvoiceId, i.InvoiceDate, i.BillingAddress, i.BillingCity, i.BillingState, i.BillingCountry, i.BillingPostalCode, i.Total
FROM 
(
	SELECT * FROM Employee e
	WHERE e.Title LIKE "Sales % Agent"
) AS sa
JOIN Customer c ON sa.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.CustomerId = i.CustomerId
ORDER BY sa.LastName;