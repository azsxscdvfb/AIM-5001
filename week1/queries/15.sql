SELECT "LastName", "CustomerId", "Country", 
CASE 
	when "Company" IS NULL THEN 'Individual'
	ELSE "Company"
END AS Company_Affiliation
FROM "Customer"
ORDER BY "Country", "LastName";