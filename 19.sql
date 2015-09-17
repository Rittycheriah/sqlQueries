SELECT query1.* 
FROM (SELECT SUM(i.Total) AS SalesTotal, e.EmployeeId, e.FirstName, e.LastName 
FROM Invoice i 
JOIN Customer c 
ON c.CustomerId=i.CustomerId
JOIN Employee e 
ON c.SupportRepId=e.EmployeeId
WHERE i.InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31' 
GROUP BY e.EmployeeId) query1, (SELECT MAX(query2.SalesTotal) AS highest_sales 
FROM (SELECT SUM(i.Total) AS SalesTotal, e.EmployeeId, e.FirstName, e.LastName 
FROM Invoice i 
JOIN Customer c 
ON c.CustomerId=i.CustomerId
JOIN Employee e 
ON c.SupportRepId=e.EmployeeId
WHERE i.InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31' 
GROUP BY e.EmployeeId) query2) query3 WHERE query1.SalesTotal=highest_sales;
