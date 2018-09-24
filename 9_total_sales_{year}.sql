SELECT *
FROM 
(
	SELECT "$"||SUM(i.Total) AS "Sales in 2009"
	FROM Invoice i
	WHERE i.InvoiceDate LIKE '2009%'
)
JOIN 
(
	SELECT "$"||SUM(i.Total) AS "Sales in 2011"
	FROM Invoice i
	WHERE i.InvoiceDate LIKE '2011%'
);