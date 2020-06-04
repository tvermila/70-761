-- Table joining

SELECT Person.FirstName, Person.LastName, EmailAddress.EmailAddress
FROM Person.Person
  JOIN
  Person.EmailAddress
  ON
Person.BusinessEntityId = EmailAddress.BusinessEntityId
WHERE LastName LIKE 'b%'
ORDER BY LastName, FirstName