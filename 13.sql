SELECT DISTINCT invL.InvoiceLineId, trx.Name, art.Name, trx.TrackId as trxId, invL.TrackId AS invTID, art.ArtistId AS AArtistId
FROM InvoiceLine invL 
JOIN Track trx 
ON trxId=invTID
LEFT JOIN Album alb
ON trxId=alb.ArtistId
LEFT JOIN Artist art
ON AArtistId=alb.ArtistId;

