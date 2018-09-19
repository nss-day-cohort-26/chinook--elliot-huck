SELECT *
FROM 
(
	SELECT COUNT(*) AS "Invoices in 2009"
	FROM Invoice i
	WHERE i.InvoiceDate LIKE '2009%'
)
JOIN 
(
	SELECT COUNT(*) AS "2011"
	FROM Invoice i
	WHERE i.InvoiceDate LIKE 'Invoices in 2011%'
);