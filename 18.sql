SELECT SUM(i.Total), e.EmployeeId, e.FirstName, e.LastName 
FROM Invoice i 
JOIN Customer c 
ON c.CustomerId=i.CustomerId
JOIN Employee e 
ON c.SupportRepId=e.EmployeeId GROUP BY e.EmployeeId;
