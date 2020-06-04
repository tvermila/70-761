-- Stored Proc Input Parameter Example

CREATE PROC Person.uspGetPhoneNumber
@lastname VARCHAR(50) = '%',
@firstname VARCHAR(50) = '%'
AS
SELECT p.LastName + ', ' + p.FirstName Name, pp.PhoneNumber
FROM Person.Person p
JOIN
Person.PersonPhone pp
ON
p.BusinessEntityID = pp.BusinessEntityID
WHERE LastName LIKE @lastname AND FirstName LIKE @firstname;

EXEC Person.uspGetPhoneNumber @firstname = 'Aaron';
