SELECT
	REP AS 'Top Sales Agent',
	'$'||MAX(Sales) AS 'Total Sales'
FROM
(
	SELECT
		e.FirstName||' '||e.LastName AS 'Rep',
		ROUND(SUM(i.Total), 2) AS 'Sales'
	FROM Employee e
	JOIN Customer c ON e.EmployeeId = c.SupportRepId
	JOIN Invoice i ON c.CustomerId = i.CustomerId
	GROUP BY e.EmployeeId
);