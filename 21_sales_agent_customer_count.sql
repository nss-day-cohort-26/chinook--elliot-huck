SELECT 
sa.FirstName||' '||sa.LastName AS 'Sales Rep',
COUNT(c.CustomerId) AS 'Number of Customers'
FROM Employee sa
JOIN Customer c ON sa.EmployeeId = c.SupportRepId
WHERE sa.Title LIKE 'Sales % Agent'
GROUP BY sa.FirstName;