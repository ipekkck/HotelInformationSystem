
--(a) a JOIN combining 2 relations.

--Retrieve Emp_name and Emp_position along with their department names 
SELECT e.Emp_name, e.Emp_position, d.Department_name
FROM Employees e
JOIN Departments d ON e.Department_ID = d.Department_ID;


--Retrieve reservation details along with the room number and type for each reservation 
SELECT r.Res_no, r.Check_in_date, r.Check_out_date, ro.Room_no, ro.Room_type
FROM Reservation r
JOIN Rooms ro ON r.Res_no = ro.Res_no;






--(b) a JOIN combining 3 relations.

--Retrieve employee names, their positions, department names, and hotel names
SELECT e.Emp_name, e.Emp_position, d.Department_name, h.Hotel_name
FROM Employees e
JOIN Departments d ON e.Department_ID = d.Department_ID
JOIN Hotels h ON e.Hotel_ID = h.Hotel_ID;


--Retrieve admin names, the events they organize, and the guests attending those events
SELECT a.Admin_name, e.Event_name, g.Guests_name
FROM Admins a
JOIN Organizes o ON a.Admin_ID = o.Admin_ID
JOIN Events e ON o.Event_no = e.Event_no
JOIN Attend a2 ON e.Event_no = a2.Event_no
JOIN Guests g ON a2.Guests_ID = g.Guests_ID;






--(c) a LEFT OUTER JOIN.

--Retrieve all employees and their department information
SELECT e.Emp_name, e.Emp_position, d.Department_name
FROM Employees e
LEFT JOIN Departments d ON e.Department_ID = d.Department_ID;


--Retrieve all reservers along with their reservation details
SELECT v.Reserver_name, r.Check_in_date, r.Check_out_date
FROM Reserver v
LEFT JOIN Reservation r ON v.Reserver_ID = r.Reserver_ID;






--(d) a RIGHT OUTER JOIN.

--Retrieve all departments and their employees
SELECT e.Emp_name, e.Emp_position, d.Department_name
FROM Employees e
RIGHT JOIN Departments d ON e.Department_ID = d.Department_ID;


--Retrieve all rooms and their associated stay information
SELECT r.Room_no, r.Room_type, s.Start_date, s.End_date
FROM Rooms r
RIGHT JOIN Stays s ON r.Room_no = s.Room_no;






--(e) a FULL OUTER JOIN.

--Retrieve all employees and all departments
SELECT e.Emp_name, e.Emp_position, d.Department_name
FROM Employees e
FULL OUTER JOIN Departments d ON e.Department_ID = d.Department_ID;


--Retrieve all stays, the guests who stayed in rooms, and the rooms assigned to those stays.
SELECT s.Stay_ID, g.Guests_name, r.Room_no
FROM Stays s
FULL OUTER JOIN Rooms r ON s.Room_no = r.Room_no
FULL OUTER JOIN Guests g ON s.Guests_ID = g.Guests_ID;





--(f) a CROSS JOIN.

--Retrieve every possible combination of rooms and events 
SELECT ro.Room_no, e.Event_name
FROM Rooms ro
CROSS JOIN Events e;


--Retrieve every possible combination of hotels and tour companies 
SELECT h.Hotel_name, t.TourC_name
FROM Hotels h
CROSS JOIN TourCompanies t;






--(g) a SELF JOIN

--Retrieve employee names along with their supervisor's name
SELECT e.Emp_name AS Employee, s.Emp_name AS Supervisor
FROM Employees e
LEFT JOIN Employees s ON e.Supervisor_ID = s.Emp_ID;

--Retrieve employees who work in the same department and shows their names
SELECT e1.Emp_name AS Employee1, e2.Emp_name AS Employee2, d.Department_name
FROM Employees e1
JOIN Employees e2 ON e1.Department_ID = e2.Department_ID
JOIN Departments d ON e1.Department_ID = d.Department_ID
WHERE e1.Emp_ID <> e2.Emp_ID; 
