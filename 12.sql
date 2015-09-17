SELECT inv.*, inv.TrackId AS TRACKidd, trx.TrackId AS trxID, trx.Name FROM InvoiceLine inv JOIN Track trx ON TRACKidd=trxID;
