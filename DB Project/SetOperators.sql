

--(a) a Subquery

--Retrieve the names and salaries of employees who work in departments 2 or 3.
SELECT Emp_name, Salary
FROM Employees
WHERE Department_ID = 2 OR Department_ID = 3;


--Retrieve the names of hotels where at least one room has a price above the average room price across all hotels.
SELECT Hotel_name
FROM Hotels
WHERE Hotel_ID IN (
    SELECT Hotel_ID
    FROM Rooms
    WHERE Room_price > (SELECT AVG(Room_price) FROM Rooms));








--(b) a Corelated Subquery

--Retrieve the Department_ID, Department_name, and the number of employees in each department.
SELECT D.Department_ID, 
       D.Department_name,
       (SELECT COUNT(*) 
        FROM Employees E 
        WHERE E.Department_ID = D.Department_ID) AS EmployeeCount
FROM Departments D;


--Retrieve the Guests_ID, Guests_name, and the recent Stay_ID for each guest.
SELECT G.Guests_ID, 
       G.Guests_name, 
       (SELECT TOP 1 S.Stay_ID
        FROM Stays S
        WHERE S.Guests_ID = G.Guests_ID
        ORDER BY S.End_date DESC) AS RecentStay
FROM Guests G;






--(c) UNION

--Combines the names of hotel chains and the names of hotels into a single list, removing any duplicates.
SELECT HC_name FROM HotelChains
UNION
SELECT Hotel_name FROM Hotels;


--Combines the names of guests and the names of reservers into a single list, removing any duplicates.
SELECT Guests_name AS Name
FROM Guests
UNION
SELECT Reserver_name AS Name
FROM Reserver;







--(d) UNION ALL

--Combine employee ID's greater that 14 and employee positions start with 'F', including duplicates.
SELECT Emp_name FROM Employees 
WHERE Emp_ID > 14
UNION ALL
SELECT Emp_name FROM Employees 
WHERE Emp_position LIKE 'F%';


--Combine admin positions and employee positions, including duplicates.
SELECT Admin_position AS Position
FROM Admins
UNION ALL
SELECT Emp_position AS Position
FROM Employees;












--(e) INTERSECT

--Retrieve employee names who are also admins. 
SELECT Emp_name AS Name
FROM Employees
WHERE Hotel_ID IN (
    SELECT Hotel_ID
    FROM Admins)
INTERSECT
SELECT Admin_name AS Name
FROM Admins;


--Retrieve TourC_ID values that are common between Guests and Reserver.
SELECT TourC_ID FROM Guests
INTERSECT
SELECT TourC_ID FROM Reserver;






--(f) EXCEPT

--Retrieve employee names from the Employees table that do not appear as admin names.
SELECT Emp_name FROM Employees
EXCEPT
SELECT Admin_name FROM Admins;


--Retrieve room numbers that are marked as 'Occupied' not 'Available' or reserved with a reservation number greater than 5.
SELECT Room_no
FROM Rooms
WHERE Room_status = 'Occupied'
EXCEPT
SELECT Room_no
FROM Rooms
WHERE Room_status = 'Available' OR Res_no > 5;












--(g) A query that checks whether an attribute value is NULL, if so the query displays more meaningful text instead of displaying NULL.

--Checks if the Gender is NULL, replaces it with 'Gender not available'.
SELECT Guests_name, ISNULL(Gender, 'Gender not available') AS Gender
FROM Guests;

--Checks if the department location is NULL, replaces it with 'Location not available'.
SELECT Department_name, ISNULL(Location, 'Location not available') AS Location
FROM Departments;








--Checks if the Event location is NULL, replaces it with 'Event location not available'.
SELECT Event_name, COALESCE(Event_location, 'Event location not available') AS Event_location
FROM Events;

--Checks if the tour company contact information is NULL, replaces it with 'No Contact Information'.
SELECT TourC_name, COALESCE(Contact_Information, 'No Contact Information') AS Contact_Information
FROM TourCompanies;











--Checks if the Phone_no is NULL, and if so, replaces it with 'Phone number not available'.
SELECT Emp_name, 
       CASE 
           WHEN Phone_no IS NULL THEN 'Phone number not available'
           ELSE Phone_no 
       END AS Phone_no
FROM Employees;


--Checks if the Room status is NULL, and if so, replaces it with 'Room status not available'.
SELECT Room_no, 
       CASE 
           WHEN Room_status IS NULL THEN 'Room status not available'
           ELSE Room_status 
       END AS Room_status
FROM Rooms;
