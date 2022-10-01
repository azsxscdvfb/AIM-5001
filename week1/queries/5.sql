SELECT date_part('year',AVG(AGE("HireDate","BirthDate"))) 
AS "Average Age when hired"
FROM "Employee";