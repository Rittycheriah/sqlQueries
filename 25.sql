SELECT COUNT(InvoiceLine.TrackId) AS TotalBought, InvoiceLine.TrackId
FROM InvoiceLine
GROUP BY InvoiceLine.TrackId
ORDER BY TotalBought DESC
LIMIT 5;
