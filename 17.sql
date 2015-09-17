SELECT COUNT(InvoiceLineId), inv.*, invLine.InvoiceId AS InvLineIds FROM Invoice inv LEFT JOIN InvoiceLine invLine ON InvLineIds=inv.InvoiceId GROUP BY inv.InvoiceId;
