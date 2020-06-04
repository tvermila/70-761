-- JOIN Types Examples

SELECT TOP 5
  *
FROM Production.Product

SELECT TOP 5
  *
FROM Production.ProductReview

-- INNER JOIN (matching values in both tables)

SELECT p.Name, pr.ProductReviewId
FROM Production.Product p
  JOIN Production.ProductReview pr
  ON p.ProductID = pr.ProductID

-- LEFT JOIN (all items from product table)

SELECT p.Name, pr.ProductReviewId
FROM Production.Product p
  LEFT JOIN Production.ProductReview pr
  ON p.ProductID = pr.ProductID

-- RIGHT JOIN (all items from pr table)

SELECT p.Name, pr.ProductReviewId
FROM Production.Product p
  RIGHT JOIN Production.ProductReview pr
  ON p.ProductID = pr.ProductID

-- CROSS JOIN (all possible combinations of data)

SELECT p.Name, pr.ProductReviewId
FROM Production.Product p
  CROSS JOIN Production.ProductReview pr