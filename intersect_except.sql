SELECT ProductID
FROM Production.Product
ORDER BY ProductID

SELECT ProductID
FROM Production.WorkOrder


  SELECT ProductID
  FROM Production.Product
INTERSECT
  SELECT ProductID
  FROM Production.WorkOrder


  SELECT ProductID
  FROM Production.Product
EXCEPT
  SELECT ProductID
  FROM Production.WorkOrder