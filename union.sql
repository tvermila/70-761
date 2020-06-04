USE AdventureWorks2012;

CREATE TABLE Employees
(
  EID int not NULL,
  FirstName VARCHAR(20) NOT NULL,
  LastName VARCHAR(25) NOT NULL,
  StreetAddress VARCHAR(50),
  City VARCHAR(20),
  State CHAR(2)
)

CREATE TABLE Customers
(
  EID int not NULL,
  FirstName VARCHAR(20) NOT NULL,
  LastName VARCHAR(25) NOT NULL,
  StreetAddress VARCHAR(50),
  City VARCHAR(20),
  State CHAR(2)
)


INSERT INTO Employees
VALUES
  ('1', 'Jack', 'Harris', '1423 Main Street', 'Jackson', 'TN'),
  ('2', 'Mark', 'James', '432 Seashore Street', 'Nashville', 'TN'),
  ('3', 'Alice', 'Johnson', '5235 Highway 495', 'Brentwood', 'TN'),
  ('4', 'Morgan', 'Denton', '4634 Bluebird Lane', 'Dickson', 'TN'),
  ('5', 'Don', 'Carleson', '62346 Williamsburg Court', 'Nolensville', 'TN')

INSERT INTO Customers
VALUES
  ('101', 'Jerry', 'Algood', '333 Bullard Ave', 'Chicago', 'IL'),
  ('102', 'John', 'Williams', '2523 First Avenue North', 'Atlanta', 'GA'),
  ('103', 'Kristin', 'Addison', '26675 East Hwy 33', 'Dallas', 'TX'),
  ('104', 'Megan', 'Wilson', '6786 3rd Ave', 'Memphis', 'TN'),
  ('105', 'Janet', 'Greene', '99674 Jackson Square', 'Louisville', 'KY')

  SELECT FirstName, LastName, StreetAddress, City, [State]
  FROM Employees
UNION
  SELECT FirstName, LastName, StreetAddress, City, [State]
  FROM Customers
ORDER BY LastName, FirstName