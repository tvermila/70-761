SELECT ProductID, Name, ProductNumber, ListPrice
from Production.Product
ORDER BY Name asc;

SELECT ProductID, Name, ProductNumber, ListPrice
FROM Production.Product
ORDER BY Name ASC
OFFSET 0 ROWS FETCH NEXT 15 ROWS ONLY


SELECT ProductID, Name, ProductNumber, ListPrice
FROM Production.Product
ORDER BY Name ASC
OFFSET 15 ROWS FETCH NEXT 15 ROWS ONLY