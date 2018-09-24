
SELECT 
Rep AS 'Sales Rep',
"$"||MAX(Sales) AS 'Total Sales in 2009'
FROM
(
	SELECT 
	e.FirstName||" "||e.LastName AS 'Rep',
	ROUND(SUM(i.Total), 2) AS 'Sales'
	FROM Employee e
	JOIN Customer c ON e.EmployeeId = c.SupportRepId
	JOIN Invoice i ON c.CustomerId = i.CustomerId
	WHERE i.InvoiceDate LIKE "2009%"
	GROUP BY e.FirstName
)
;