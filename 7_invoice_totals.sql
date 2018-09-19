SELECT 
i.Total,
c.FirstName || " " || c.LastName AS "Customer Name",
i.BillingCountry AS "Country",
sa.FirstName || " " || sa.LastName AS "Sales Agent"
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee sa ON c.SupportRepId = sa.EmployeeId;