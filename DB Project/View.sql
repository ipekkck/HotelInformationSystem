
--Join View
CREATE VIEW EmployeeDepartmentHotelDetails AS
SELECT E.Emp_name AS EmployeeName, E.Emp_position AS Position, D.Department_name AS Department,
       H.Hotel_name AS Hotel, H.Location AS HotelLocation
FROM Employees E
JOIN Departments D ON E.Department_ID = D.Department_ID
JOIN Hotels H ON E.Hotel_ID = H.Hotel_ID;
GO




-----Q1
SELECT EmployeeName, Department, Hotel
FROM EmployeeDepartmentHotelDetails;



-----Q2
SELECT EmployeeName, Department
FROM EmployeeDepartmentHotelDetails
WHERE Hotel = 'Royal Suites';





-----
INSERT INTO EmployeeDepartmentHotelDetails (EmployeeName, Position, Department, Hotel, HotelLocation)
VALUES ('Alice Johnson', 'Manager', 'Security', 'Sunshine Hotel', 'Beachfront');

INSERT INTO Hotels (Hotel_ID, Hotel_name, Location, Hotel_rate, Contact_Information, HC_ID) VALUES
(13, 'Sunshine Hotel', 'Downtown', 5, '123 Grand St, City', 1);

INSERT INTO Departments (Department_ID, Department_name, Location, Hotel_ID) VALUES
(13, 'Security', 'Floor 5', 13);

INSERT INTO Employees (Emp_ID, Emp_name, Emp_position, Phone_no, Address, Salary, Hotel_ID, Department_ID, Supervisor_ID) VALUES
(23, 'Alice Johnson', 'HR', '555-1111', '101 First St', 175000, 5, 5, 7);

INSERT INTO Employees (Emp_ID, Emp_name, Emp_position, Phone_no, Address, Salary, Hotel_ID, Department_ID, Supervisor_ID) VALUES
(24, 'Alicess Johnson', 'HR', '555-1111', '101 First St', 175000, 5, 5, 7);




-----
DELETE FROM EmployeeDepartmentHotelDetails
WHERE EmployeeName = 'Alice Johnson' AND Position = 'HR';

DELETE FROM Employees
WHERE Emp_name = 'Alice Johnson'; 

DELETE FROM Employees
WHERE Emp_position = 'HR'; 









EXEC sp_helptext 'EmployeeDepartmentHotelDetails';


