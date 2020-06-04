-- INSERT SELECT Example

CREATE TABLE InsertSelectExample
(
  SID INT IDENTITY,
  FirstName VARCHAR(25) NOT NULL,
  LastName VARCHAR(25) NOT NULL,
  EmailAddress VARCHAR(50)
)

SELECT * FROM InsertSelectExample;

INSERT INTO InsertSelectExample
  SELECT p.FirstName, p.LastName, e.EmailAddress
  FROM Person.Person p
  JOIN Person.EmailAddress e
  ON p.BusinessEntityID = e.BusinessEntityID
