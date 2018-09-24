SELECT
	e.FirstName||' '||e.LastName AS 'Sales Agent',
	'$'||ROUND(SUM(i.Total), 2) AS 'Total Sales'
FROM Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId;