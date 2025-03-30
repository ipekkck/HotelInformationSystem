
--(a) retrieve all the tuples of a relation. Display all the attribute values.

--Retrieve all tuples from HotelChains 
SELECT * FROM HotelChains;

--Retrieve all tuples from Events 
SELECT * FROM Events;





--(b) retrieve all the tuples of a relation. Display some but not all attribute values.

--Retrieve Emp_name, Emp_position, and Salary from Employees
SELECT Emp_name, Emp_position, Salary FROM Employees;

--Retrieve Check_in_date, Check_out_date from Reservation
SELECT Check_in_date, Check_out_date FROM Reservation;





--(c) retrieve the tuples that satisfy some condition.

--Employees earning more than 50,000
SELECT * FROM Employees WHERE Salary > 50000;

--Rooms that are currently available
SELECT * FROM Rooms WHERE Room_status = 'Available';





--(d) retrieve the tuples that satisfy some condition. Query should include the LIKE operator.

--Guests whose names start with 'P'
SELECT * FROM Guests WHERE Guests_name LIKE 'P%';

--Employees with positions containing 'Manager'
SELECT * FROM Employees WHERE Emp_position LIKE '%Manager%';





--(e) retrieve the tuples that satisfy some condition. Output should be sorted – sorting on a single attribute.

--Departments sorted alphabetically by name
SELECT * FROM Departments ORDER BY Department_name ASC;

--Reservations sorted by check-out date, descending
SELECT * FROM Reservation ORDER BY Check_out_date DESC;





--(f) retrieve the tuples that satisfy some condition. Output should be sorted – sorting on more than one attribute.

--Employees with salary > 30,000, sorted by position and then by salary, descending
SELECT * FROM Employees WHERE Salary > 30000 ORDER BY Emp_position, Salary DESC;

--Available rooms sorted by type and then by price
SELECT * FROM Rooms WHERE Room_status = 'Available' ORDER BY Room_type, Room_price;





--(g) retrieve the first 5 tuples of a relation.

--First 5 departments
SELECT TOP 5 * FROM Departments;

--First 5 admins
SELECT TOP 5 * FROM Admins;





--(h) retrieve 20% of the tuples of a relation.

--20% of guests based on their Guest_ID
WITH GuestCTE AS (
    SELECT *, ROW_NUMBER() OVER (ORDER BY Guests_ID) AS RowNum
    FROM Guests)
SELECT * FROM GuestCTE WHERE RowNum <= (SELECT COUNT(*) FROM Guests) * 0.2;


--20% of reservations based on their reservation number
WITH ReservationCTE AS (
    SELECT *, ROW_NUMBER() OVER (ORDER BY Res_no) AS RowNum
    FROM Reservation
)
SELECT * FROM ReservationCTE WHERE RowNum <= (SELECT COUNT(*) FROM Reservation) * 0.2;





--(i) implement a query that groups a relation on a specific attribute, and applies SUM, COUNT, MIN, MAX aggregate functions on each group.

--Total salary, count of employees, min and max salary per hotel
SELECT Hotel_ID, SUM(Salary) AS TotalSalary, COUNT(*) AS EmployeeCount, MIN(Salary) AS MinSalary, MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY Hotel_ID;

--Total price, count of rooms, min and max price per room type
SELECT Room_type, SUM(Room_price) AS TotalPrice, COUNT(*) AS RoomCount, MIN(Room_price) AS MinPrice, MAX(Room_price) AS MaxPrice
FROM Rooms
GROUP BY Room_type;





--(j) List all the relations you have created in your database using all three techniques you have learned.

--List all user tables in the database
SELECT name AS TableName
FROM SYS.OBJECTS
WHERE type = 'U';

--List all user tables in the database except those that start with 'res'
SELECT name AS TableName
FROM SYS.OBJECTS
WHERE type = 'U' AND name NOT LIKE 'res%';



--List all tables in the database
SELECT name AS TableName
FROM SYS.TABLES;

--List all tables in the 'dbo' schema
SELECT name AS TableName
FROM SYS.TABLES
WHERE schema_id = SCHEMA_ID('dbo');



--List all base tables in the database
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

-- List all base tables with 'Hotel' in their name 
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_NAME LIKE '%Hotel%';

