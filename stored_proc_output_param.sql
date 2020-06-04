-- Stored Proc Output Param Example

-- CREATE PROC SPoutput
-- @lname VARCHAR(50) = '%',
-- @numrows int = 0 OUTPUT
-- AS
-- SELECT LastName FROM Person.Person
-- WHERE LastName LIKE @lname
-- SET @numrows = @@ROWCOUNT

-- DECLARE @retrows INT
-- EXEC SPoutput 'B%', @numrows = @retrows OUTPUT;

-- SELECT @retrows AS 'Rows'

CREATE PROC GetNatID
@BusEntityID int,
@NationalID int OUTPUT
AS
BEGIN
  SELECT @NationalID = NationalIDNumber
  FROM HumanResources.Employee
  WHERE BusinessEntityID = @BusEntityID
END

DECLARE @m INT
EXEC GetNatID 5, @m OUTPUT
PRINT ' '
PRINT 'The NationalID number is:'
PRINT @m