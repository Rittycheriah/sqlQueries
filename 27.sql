SELECT COUNT(InvoiceLine.TrackId) AS TopMedia, medT.Name 
FROM InvoiceLine
JOIN Track trck
ON trck.TrackId=InvoiceLine.TrackId
JOIN MediaType medT
ON medT.MediaTypeId=trck.MediaTypeId
GROUP BY medT.MediaTypeId
ORDER BY TopMedia DESC
LIMIT 1;
