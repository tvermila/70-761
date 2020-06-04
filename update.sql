-- UPDATE Example

SELECT * FROM Person.Address
WHERE AddressLine1 = '1227 Shoe St.'

UPDATE Person.Address
SET AddressLine1 = '1227 Shoe St.'
WHERE AddressLine1 = '1226 Shoe St.'

SELECT * FROM Sales.SalesPerson

UPDATE Sales.SalesPerson
SET Bonus = 6000, CommissionPct = .10, SalesQuota = NULL
WHERE TerritoryID = 1;