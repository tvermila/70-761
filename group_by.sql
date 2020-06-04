-- GROUP BY Examples

SELECT *
FROM Sales.SalesOrderDetail

SELECT ProductID, SUM(unitprice) 'Total UP'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY 'Total UP'
