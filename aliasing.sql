-- Table aliasing

SELECT p.FirstName, p.LastName, em.EmailAddress
FROM Person.Person p
  JOIN
  Person.EmailAddress em
  ON
p.BusinessEntityId = em.BusinessEntityId
WHERE LastName LIKE 'b%'
ORDER BY LastName, FirstName