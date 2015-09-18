SELECT COUNT(InvoiceLine.TrackId) AS TotalBought, InvoiceLine.TrackId AS invTrx 
FROM InvoiceLine
JOIN PlaylistTrack plyTrck
ON invTrx=plyTrck.TrackId
GROUP BY InvoiceLine.TrackId
ORDER BY TotalBought DESC
LIMIT 5;
