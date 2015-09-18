SELECT COUNT(InvoiceLine.TrackId) AS TotalBought, art.Name, InvoiceLine.TrackId AS invTrx, trx.TrackId AS trxId
FROM InvoiceLine
JOIN PlaylistTrack plyTrck
ON invTrx=plyTrck.TrackId
JOIN Track trx
ON invTrx=trxId
JOIN Album alb
ON trx.AlbumId=alb.AlbumId
JOIN Artist art
ON art.ArtistId=alb.ArtistId
GROUP BY InvoiceLine.TrackId
ORDER BY TotalBought DESC
LIMIT 3;
