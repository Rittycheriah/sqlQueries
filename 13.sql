SELECT trck.Name, trck.TrackId AS trxid, invL.TrackId AS invtrckid FROM InvoiceLine invL JOIN Track trck WHERE trxid=invtrckid;

incomplete solution
