SELECT COUNT(c.CustomerId) AS TotalCustomersPerAgent, e.EmployeeId, e.FirstName, e.LastName 
FROM Customer c
JOIN Employee e 
ON c.SupportRepId=e.EmployeeId
GROUP BY e.EmployeeId;
