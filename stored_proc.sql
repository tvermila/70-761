-- Stored Procedure Example

CREATE PROC GetPhone
AS
SELECT p.LastName + ', ' + p.FirstName Name, pp.PhoneNumber
FROM Person.Person p 
JOIN
Person.PersonPhone pp
ON p.BusinessEntityID = pp.BusinessEntityID
ORDER BY LastName, FirstName

EXEC GetPhone