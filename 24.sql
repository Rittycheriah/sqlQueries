SELECT trx.TrackId AS TRXid, inv.TrackId AS INVid, COUNT(inv.TrackId)
FROM InvoiceLine inv
JOIN Track trx 
ON TRXid=INVid
GROUP BY INVid

^ Doesn't truly work yet. Working on this solution.
