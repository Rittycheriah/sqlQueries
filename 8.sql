SELECT i.*, c.FirstName, c.LastName, e.EmployeeId, e.FirstName, e.LastName FROM Invoice i JOIN Customer c ON c.CustomerId=i.CustomerId JOIN Employee e ON c.SupportRepId=e.EmployeeId;
