-- Having Examples

SELECT ProductID, SUM(LineTotal) 'Total'
FROM Sales.SalesOrderDetail
WHERE LineTotal > 1000
GROUP BY ProductID
HAVING SUM(LineTotal) > 20000
ORDER BY 'Total'