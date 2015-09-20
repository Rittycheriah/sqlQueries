SELECT SUM(InvoiceLine.Quantity) AS TotalSold, Artist.Name
FROM InvoiceLine
JOIN Track AS track 
ON InvoiceLine.TrackId=Track.TrackId
JOIN Album on track.AlbumId=Album.AlbumId
JOIN Artist on Album.ArtistId=Artist.ArtistId
GROUP BY Artist.ArtistId
ORDER BY TotalSold DESC
LIMIT 3;
