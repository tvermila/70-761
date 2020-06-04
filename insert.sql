-- INSERT Examples

CREATE TABLE InsertExample
(
  SID INT IDENTITY,
  FirstName VARCHAR(25) NOT NULL,
  LastName VARCHAR(25) NOT NULL,
  City VARCHAR(12) NULL,
  State CHAR(2) DEFAULT('TN')
)

INSERT INTO InsertExample
(FirstName, LastName, City)
VALUES
('Bob', 'Jackson', 'Nashville')

SELECT * FROM InsertExample;

-- IF values match columns, column names are not needed
INSERT INTO InsertExample
VALUES
('Jack', 'Smith', 'Atlanta', 'GA');


-- Multiple values can be inserted in one statement
INSERT INTO InsertExample
(City, LastName, FirstName)
VALUES
('Nashville', 'Jones', 'Jack'),
('Paris', 'Marly', 'Harold'),
('Vantaa', 'Vermilä', 'Tomas')