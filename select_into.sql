-- SELECT INTO Example

SELECT TOP 1 * from Person.Person
SELECT TOP 1 * FROM Person.EmailAddress

SELECT p.FirstName, p.LastName, e.EmailAddress
INTO EmailList
FROM Person.Person p 
JOIN Person.EmailAddress e 
ON
p.BusinessEntityID = e.BusinessEntityID

SELECT * FROM EmailList