SELECT "LastName", "CustomerId", "Country", "Company"
FROM "Customer"
WHERE "Company" IS NOT NULL
ORDER BY "Country", "LastName";