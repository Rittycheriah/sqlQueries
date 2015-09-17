SELECT SUM(inv.Total), inv.BillingCountry FROM Invoice inv GROUP BY BillingCountry ORDER BY SUM(inv.Total) DESC;

