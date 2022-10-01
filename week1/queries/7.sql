SELECT "FirstName", "LastName", "Title", "EmployeeId"
FROM "Employee"
ORDER BY AGE("HireDate","BirthDate") DESC
LIMIT 3;