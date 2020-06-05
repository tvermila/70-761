-- Understanding CTEs

WITH C AS
(
  SELECT YEAR(OrderDate) OrderYear, SalesOrderID
  FROM Sales.SalesOrderHeader
)
SELECT OrderYear, COUNT(DISTINCT SalesOrderID) NbrCustomers
FROM C
GROUP BY OrderYear
ORDER BY OrderYear


WITH C1 AS
(
  SELECT YEAR(OrderDate) OrderYear, SalesOrderID
  FROM Sales.SalesOrderHeader
),
C2 AS
(
  SELECT OrderYear, COUNT(DISTINCT SalesOrderID) NbrCustomers
  FROM C1
  GROUP BY OrderYear
)
SELECT OrderYear, NbrCustomers
FROM C2
WHERE NbrCustomers > 50
ORDER BY OrderYear