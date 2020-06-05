-- Table Variables Example

DECLARE @MTL AS TABLE
(
  FirstName VARCHAR(40),
  LastName VARCHAR(40),
  Orders INT,
  OrderTot INT
)

INSERT INTO @MTL
(FirstName, LastName, Orders, OrderTot)
SELECT p.FirstName, p.LastName, COUNT(*), SUM(soh.TotalDue)
FROM Person.Person p 
JOIN Sales.SalesOrderHeader soh 
ON p.BusinessEntityID = soh.SalesPersonID
GROUP BY FirstName, LastName

SELECT * FROM @MTL
ORDER BY Orders DESC