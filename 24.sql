SELECT trx.Name, COUNT(invL.TrackId) AS NumberOfTimesBought,  trx.TrackId AS trxID, invL.TrackId AS invTID, invL.InvoiceId AS InvoiceIdLL
FROM InvoiceLine invL 
JOIN Invoice
ON Invoice.InvoiceId=InvoiceIdLL
JOIN Track trx 
ON trxId=invTID
WHERE Invoice.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY trxID;

Not sure if this is the right answer, but my count of the TrackId's shows only one purchase per track. 
