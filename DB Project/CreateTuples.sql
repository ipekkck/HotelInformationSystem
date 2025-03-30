
INSERT INTO HotelChains (HC_ID, HC_name, Contact_Information) VALUES
(1, 'Grand Hotels', '123 Grand St, City, 555-1234'),
(2, 'Luxury Suites', '456 Luxury Ave, City, 555-5678'),
(3, 'Paloma Hotels', 'info@palomahotels.com, +1-800-555-1010'),
(4, 'Mountain Resorts', '101 Mountain Dr, City, 555-1122'),
(5, 'Coastal Getaways', '202 Ocean Blvd, City, 555-3344'),
(6, 'Crystal Hotels', 'info@crystalhotels.com, +1-800-555-2020'),
(7, 'Desert Retreats', '404 Desert Way, City, 555-7789'),
(8, 'Forest Lodges', '505 Woodside Ln, City, 555-8890'),
(9, 'Oceanic Hotels', '606 Beach Rd, City, 555-9901'),
(10, 'Sherwood Hotels', 'info@sherwoodhotels.com, +1-800-555-3030'),
(11, 'Rixos Hotels', 'info@rixoshotels.com, +1-800-555-4040'),
(12, 'Hilton Hotels', 'info@hilton.com, +1-800-555-5050');


INSERT INTO Hotels (Hotel_ID, Hotel_name, Location, Hotel_rate, Contact_Information, HC_ID) VALUES
(1, 'Grand Palace', 'Downtown', 5, '123 Grand St, City', 1),
(2, 'Royal Suites', 'Uptown', 7, '456 Luxury Ave, City', 2),
(3, 'Paloma Oceana Resort', 'Antalya, Turkey', 5, 'contact@palomaoceana.com, +90-242-555-1111', 3),
(4, 'Mountain View Resort', 'Hillside', 6, '101 Mountain Dr, City', 4),
(5, 'Seaside Hotel', 'Beachfront', 7, '202 Ocean Blvd, City', 5),
(6, 'Crystal Palace Luxury Resort', 'Side, Turkey', 5, 'contact@crystalpalace.com, +90-242-555-3333', 6),
(7, 'Desert Oasis', 'Desert', 3, '404 Desert Way, City', 7),
(8, 'Woodland Resort', 'Forest Area', 5, '505 Woodside Ln, City', 8),
(9, 'Oceanview Hotel', 'Coastal Area', 6, '606 Beach Rd, City', 9),
(10, 'Sherwood Greenwood Resort', 'Kemer, Turkey', 4, 'contact@sherwoodgreenwood.com, +90-242-555-6666', 10),
(11, 'Rixos Premium Belek', 'Belek, Turkey', 5, 'contact@rixospremium.com, +90-242-555-7777', 11),
(12, 'Hilton Istanbul Bosphorus', 'Istanbul, Turkey', 5, 'contact@hiltonbosphorus.com, +90-212-555-9999', 12);


INSERT INTO Departments (Department_ID, Department_name, Location, Hotel_ID) VALUES
(1, 'General Managemenent', 'Floor 5', 1),
(2, 'Reception', 'Lobby', 1),
(3, 'Housekeeping', 'Floor 1', 2),
(4, 'Event Management', 'Lobby', 3),
(5, 'Room Service', 'Floor 1', 3),
(6, 'Accounts', 'Floor 2', 5),
(7, 'Food & Beverage Service', 'Lobby', 6),
(8, 'Security', 'Lobby', 6),
(9, 'Human Resources', 'Floor 3', 10),
(10, 'Information Technology', 'Lobby', 11),
(11, 'Sales & Marketing', 'Floor 2', 11),
(12, 'Kitchen', 'Floor 1', 12);


INSERT INTO Employees (Emp_ID, Emp_name, Emp_position, Phone_no, Address, Salary, Hotel_ID, Department_ID, Supervisor_ID) VALUES
(1, 'Jack Clark', 'CEO', '555-1111', '101 First St', 175000, 1, 1, NULL),
(2, 'Jane Smith', 'Receptionist', '555-2222', '102 Second St', 28000, 2, 2, 1),
(3, 'Volkan Demir', 'Housekeeper', '555-3333', '103 Third St', 18000, 3, 3, 1),
(4, 'Leyla Toker', 'Cook', '555-4444', '104 Fourth St', NULL, 3, 12, 7),
(5, 'Michael Brown', 'Computer Engineer', '555-5555', '105 Fifth St', 90000, 4, 10, 7),
(6, 'Meryem Yýlmaz', 'Housekeeper', '555-6666', '106 Sixth St', 18000, 6, 3, 1),
(7, 'Daniel Lee', 'CEO', '555-7777', '107 Seventh St', 175000, 7, 1, NULL),
(8, 'Linda Sea', 'Receptionist', '555-8888', '108 Eighth St', 28000, 9, 2, 7),
(9, 'Berk Atasoy', 'Accounting Specialist', '555-9999', '109 Ninth St', 50000, 10, 6, 7),
(10, 'Barbara Martinez', 'Event Manager', '555-1010', '110 Tenth St', 25000, 11, 4, 7),
(11, 'Doðukan Ateþ', 'Barmen', '555-2020', '111 Eleventh St', 22000, 11, 7, 1),
(12, 'Melek Karataþ', 'Room Service', '555-3030', '112 Twelfth St', 18000, 12, 5, 1),
(13, 'Liam Johnson', 'Operations Manager', '555-102-2222', '101 Main Street, City A', 95000, 11, 9, 1), 
(14, 'Olivia Brown', 'HR Manager', '555-103-3333', '102 Main Street, City A', 85000, 12, 9, 1), 
(15, 'Noah Davis', 'Finance Manager', '555-104-4444', '103 Main Street, City A', 90000, 3, 6, 7), 
(16, 'Emma Wilson', 'Marketing Manager', '555-105-5555', '104 Main Street, City A', 80000, 6, 11, 1), 
(17, 'James Garcia', 'IT Manager', '555-106-6666', '105 Main Street, City A', 87000, 7, 10, 1), 
(18, 'Charlotte Young', 'Food and Beverage Manager', '555-107-7777', '106 Main Street, City A', 78000, 2, 7, 7), 
(19, 'Isabella Anderson', 'Guest Relations Manager', '555-108-8888', '107 Main Street, City A', 77000, 2, 9, 1), 
(20, 'Mason Thomas', 'Maintenance Manager', '555-109-9999', '108 Main Street, City A', 76000, 10, 10, 1), 
(21, 'Mia Harris', 'Sales Manager', '555-110-0000', '109 Main Street, City A', 75000, 10, 11, 7), 
(22, 'Ethan Lee', 'Security Manager', '555-111-1111', '110 Main Street, City A', 74000, 10, 8, 1); 


INSERT INTO Admins (Admin_ID, Admin_name, Admin_position, Emp_ID) VALUES
(1, 'Jack Clark', 'CEO', 1),
(2, 'Liam Johnson', 'Operations Manager', 13),
(3, 'Olivia Brown', 'HR Manager', 14),
(4, 'Noah Davis', 'Finance Manager', 15),
(5, 'Emma Wilson', 'Marketing Manager', 16),
(6, 'James Garcia', 'IT Manager', 17),
(7, 'Daniel Lee', 'CEO', 7),
(8, 'Isabella Anderson', 'Guest Relations Manager', 19),
(9, 'Mason Thomas', 'Maintenance Manager', 20),
(10, 'Mia Harris', 'Sales Manager', 21),
(11, 'Ethan Lee', 'Security Manager', 22),
(12, 'Charlotte Young', 'Food and Beverage Manager', 18);


INSERT INTO TourCompanies (TourC_ID, TourC_name, Contact_Information) VALUES
(1, 'Adventure Tours', '123 Adventure Rd, City, 555-1234'),
(2, 'Relaxation Retreats', '456 Calm St, City, 555-5678'),
(3, 'Historic Journeys', '789 History Ln, City, 555-9101'),
(4, 'Nature Explorers', '101 Nature Dr, City, 555-1122'),
(5, 'City Escapes', '202 Urban Blvd, City, 555-3344'),
(6, 'Coastal Cruises', '303 Ocean Ave, City, 555-5567'),
(7, 'Global Tour', '404 Sand Way, City, 555-7789'),
(8, 'Forest Walks', '505 Tree Ln, City, 555-8890'),
(9, 'Ocean Adventures', '606 Wave Rd, City, 555-9901'),
(10, 'Mountain Climbers', '707 Peak St, City, 555-1122'),
(11, 'Luxury Voyages', '808 Luxe Dr, City, 555-3344'),
(12, 'Charming Journeys', '909 Scenic Rd, City, 555-5567');


INSERT INTO Guests (Guests_ID, Guests_name, Gender, Age, Address, Phone_no, Hotel_ID, TourC_ID) VALUES
(1, 'Alice Green', 'Female', 30, '201 Oak St', '555-1234', 1, 1),
(2, 'Bob Brown', 'Male', 45, '202 Pine St', '555-5678', 2, NULL),
(3, 'Charlie Blue', 'Male', 25, '203 Cedar St', '555-9101', 3, 3),
(4, 'Diana White', 'Female', 35, '204 Maple St', '555-1122', 4, 4),
(5, 'Eve Black', 'Female', 28, '205 Birch St', '555-3344', 5, NULL),
(6, 'Frank Gray', 'Male', 40, '206 Elm St', '555-5567', 6, 6),
(7, 'Grace Silver', 'Female', 22, '207 Fir St', '555-7789', 7, 7),
(8, 'Hank Gold', 'Male', 38, '208 Ash St', '555-8890', 8, 8),
(9, 'Ivy Rose', 'Female', 50, '209 Willow St', '555-9901', 9, 9),
(10, 'Peter Parker', 'Male', 33, '210 Cherry St', '555-1122', 10, NULL),
(11, 'Kathy Maroon', 'Female', 27, '211 Plum St', '555-3344', 11, 11),
(12, 'Lois Lane', 'Male', 29, '212 Chestnut St', '555-5567', 12, 12);


INSERT INTO Reserver (Reserver_ID, Reserver_name, Reserver_type, Guests_ID, TourC_ID) VALUES
(1, 'Alice Green', 'Guest', 1, NULL),
(2, 'Bob Brown', 'Guest', 2, NULL),
(3, 'Charlie Blue', 'Guest', 3, NULL),
(4, 'Diana White', 'Guest', 4, NULL),
(5, 'Eve Black', 'Guest', 5, NULL),
(6, 'Coastal Cruises', 'Tour Company', NULL, 6),
(7, 'Global Tour', 'Tour Company', NULL, 7),
(8, 'Forest Walks', 'Tour Company', NULL, 8),
(9, 'Ocean Adventures', 'Tour Company', NULL, 4),
(10, 'Peter Parker', 'Guest', 6, NULL),
(11, 'Kathy Maroon', 'Guest', 7, NULL),
(12, 'Lois Lane', 'Guest', 8, NULL);


INSERT INTO Reservation (Res_no, Check_in_date, Check_out_date, Reserver_ID, Department_ID, Emp_ID) VALUES
(1, '2024-01-01', '2024-01-05', 1, 2, 1),
(2, '2024-01-03', '2024-01-06', 2, 2, 2),
(3, '2024-01-04', '2024-01-08', 3, 3, 3),
(4, '2024-01-02', '2024-01-07', 4, 3, 4),
(5, '2024-01-06', '2024-01-09', 5, 4, 5),
(6, '2024-01-10', '2024-01-12', 6, 4, 6),
(7, '2024-01-08', '2024-01-11', 7, 5, 7),
(8, '2024-01-15', '2024-01-18', 8, 5, 8),
(9, '2024-01-17', '2024-01-20', 9, 6, 9),
(10, '2024-01-19', '2024-01-22', 10, 6, 10),
(11, '2024-01-21', '2024-01-23', 11, 7, 11),
(12, '2024-01-24', '2024-01-28', 12, 7, 12);


INSERT INTO Rooms (Room_no, Room_type, Room_status, Room_price, Room_floor, Hotel_ID, Res_no) VALUES
(101, 'Single', 'Available', 6000, 1, 1, 2),
(102, 'Double', 'Occupied', 8000, 1, 1, 1),
(103, 'Suite', 'Available', 25000, 2, 2, 3),
(104, 'Single', 'Occupied', 1200, 1, 3, 3),
(105, 'Double', 'Available', 1800, 2, 4, 4),
(106, 'Suite', 'Available', 30000, 3, 5, 5),
(107, 'Single', 'Occupied', 5000, 1, 6, 2),
(108, 'Double', 'Available', 4800, 2, 7, NULL),
(109, 'Suite', 'Occupied', 14000, 3, 8, 3),
(110, 'Single', 'Available', 1200, 1, 9, NULL),
(111, 'Double', 'Occupied', 3700, 2, 10, 8),
(112, 'Suite', 'Available', 27000, 3, 11, NULL);


INSERT INTO Payment (Payment_no, Payment_amount, Payment_method, Payment_date) VALUES
(1, 500, 'Credit Card', '2024-01-05'),
(2, 300, 'Cash', '2024-01-06'),
(3, 450, 'Credit Card', '2024-01-08'),
(4, 200, 'Cash', '2024-01-07'),
(5, 600, 'Credit Card', '2024-01-09'),
(6, 150, 'Cash', '2024-01-12'),
(7, 400, 'Credit Card', '2024-01-11'),
(8, 350, 'Cash', '2024-01-18'),
(9, 550, 'Credit Card', '2024-01-20'),
(10, 700, 'Cash', '2024-01-22'),
(11, 300, 'Credit Card', '2024-01-23'),
(12, 800, 'Cash', '2024-01-28');


INSERT INTO Stays (Stay_ID, Start_date, End_date, Room_no, Guests_ID, Payment_no) VALUES
(1, '2024-01-01', '2024-01-05', 101, 1, 1),
(2, '2024-01-03', '2024-01-06', 102, 2, 2),
(3, '2024-01-04', '2024-01-08', 103, 3, 3),
(4, '2024-01-02', '2024-01-07', 104, 4, 4),
(5, '2024-01-06', '2024-01-09', 105, 5, 5),
(6, '2024-01-10', '2024-01-12', 106, 6, 6),
(7, '2024-01-08', '2024-01-11', 107, 7, 7),
(8, '2024-01-15', '2024-01-18', 108, 8, 8),
(9, '2024-01-17', '2024-01-20', 109, 9, 9),
(10, '2024-01-19', '2024-01-22', 110, 10, 10),
(11, '2024-01-21', '2024-01-23', 111, 11, 11),
(12, '2024-01-24', '2024-01-28', 112, 12, 12);


INSERT INTO Events (Event_no, Event_date, Event_type, Event_name, Event_location) VALUES
(1, '2024-02-01', 'Conference', 'Tech Summit', 'Grand Ballroom'),
(2, '2024-02-05', 'Wedding', 'Smith Wedding', 'Beachside Venue'),
(3, '2024-02-10', 'Concert', 'Jazz Night', 'Main Hall'),
(4, '2024-02-15', 'Conference', 'Business Expo', 'Conference Room A'),
(5, '2024-02-20', 'Wedding', 'Brown Wedding', 'Garden Pavilion'),
(6, '2024-02-25', 'Party', 'New Year Bash', 'Rooftop Lounge'),
(7, '2024-03-01', 'Seminar', 'Health & Wellness', 'Auditorium'),
(8, '2024-03-05', 'Workshop', 'Photography 101', 'Studio Room'),
(9, '2024-03-10', 'Concert', 'Rock Night', 'Outdoor Stage'),
(10, '2024-03-15', 'Conference', 'Tech Future', 'Main Hall'),
(11, '2024-03-20', 'Wedding', 'Taylor Wedding', 'Ballroom A'),
(12, '2024-03-25', 'Party', 'Spring Festival', 'Garden Area');


INSERT INTO Attend (Guests_ID, Event_no) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12);


INSERT INTO Organizes (Admin_ID, Event_no) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12);
