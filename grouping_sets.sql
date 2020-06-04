-- Grouping Sets


SELECT ProductID, CarrierTrackingNumber, SUM(LineTotal) 'Total'
FROM Sales.SalesOrderDetail
GROUP BY 
  GROUPING SETS ((ProductID, CarrierTrackingNumber), ())
ORDER BY ProductID
