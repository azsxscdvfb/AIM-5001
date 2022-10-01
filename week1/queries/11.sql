SELECT "CustomerId","LastName","Country"
FROM "Customer"
WHERE "Company" IS NULL
ORDER BY "Country", "LastName";