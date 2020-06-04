-- Build-In Functions

SELECT LineTotal
FROM Sales.SalesOrderDetail

SELECT SUM(LineTotal) 'Line Totals'
FROM Sales.SalesOrderDetail
WHERE LineTotal > 25000

SELECT COUNT(LineTotal) 'Line Totals'
FROM Sales.SalesOrderDetail
WHERE LineTotal > 25000

SELECT MAX(LineTotal) 'Line Totals'
FROM Sales.SalesOrderDetail
WHERE LineTotal > 25000

SELECT MIN(LineTotal) 'Line Totals'
FROM Sales.SalesOrderDetail
WHERE LineTotal > 25000

SELECT AVG(LineTotal) 'Line Totals'
FROM Sales.SalesOrderDetail