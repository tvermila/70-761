-- DELETE Example

SELECT TOP 25 LastName, FirstName
INTO DeleteExample
FROM Person.Person

SELECT * FROM DeleteExample

DELETE FROM DeleteExample

INSERT INTO DeleteExample
SELECT TOP 25 LastName, FirstName
FROM Person.Person

DELETE FROM DeleteExample
WHERE LastName = 'Gimmi' AND FirstName = 'Mary'