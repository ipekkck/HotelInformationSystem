
--(a) query/queries that make use of the following String functions (you need to use all 
--the functions at least once): ASCII, CHAR, LTRIM, TRIM, LOWER, UPPER, REVERSE, LEN,
--LEFT, RIGHT, CHARINDEX, SUBSTRING, REPLICATE, SPACE, PATINDEX, REPLACE, STUFF.

-- Retrieves the ASCII value of the first character in the guest's name.
SELECT Guests_name, ASCII(Guests_name) AS ASCII_value
FROM Guests;




-- Converts ASCII code 65 to its corresponding character.
SELECT CHAR(65) AS Character;








--Concatenate the trimmed '    Hello' with the TourC_name
SELECT TourC_name + ' ' + LTRIM('    Hello') AS Greeting
FROM TourCompanies;






--Concatenate the trimmed '    Hello' with the Guests_name
SELECT Guests_name + ' ' + TRIM('    Hello') AS Greeting
FROM Guests;








-- Converts the guest's name to lowercase.
SELECT LOWER(Guests_name) AS Lowercase_Guest_name
FROM Guests;






-- Converts the department name to uppercase.
SELECT Department_name, UPPER(Department_name) AS Uppercase_Department_name
FROM Departments;







-- Reverses the name of the reserver.
SELECT Reserver_name, REVERSE(Reserver_name) AS Reversed_Reserver_name
FROM Reserver;





-- Retrieves the length of the admin's name.
SELECT Admin_name, LEN(Admin_name) AS Admin_name_length
FROM Admins;






-- Retrieves the first 3 characters of the hotel name.
SELECT Hotel_name, LEFT(Hotel_name, 3) AS Left_3_chars
FROM Hotels;






-- Retrieves the last 4 characters of the employee's name.
SELECT Emp_name, RIGHT(Emp_name, 4) AS Right_4_chars
FROM Employees;







-- Finds the position of the substring '@' in the Contact Information.
SELECT Contact_Information, CHARINDEX('@', Contact_Information) AS Contact_Information
FROM Hotels;





-- Retrieves the first 5 characters of the guest's name.
SELECT Guests_name, SUBSTRING(Guests_name, 1, 5) AS Substring_Guest_name
FROM Guests;






-- Repeats the word 'Admin' 3 times.
SELECT REPLICATE('Admin', 3) AS Repeated_Admin;







-- Creates a string with 5 spaces.
SELECT SPACE(5) AS Space_String;







-- Finds the position of 'Management' in the department name.
SELECT Department_name, PATINDEX('%Management%', Department_name) AS Management_Position
FROM Departments;






-- Replaces the word 'IT' with 'Information Technology' in the department name.
SELECT Department_name, REPLACE(Department_name, 'IT', 'Information Technology') AS Updated_Department_name
FROM Departments;






-- Replaces the first 4 characters of the Contact_Information with '*'.
SELECT Contact_Information, STUFF(Contact_Information, 1, 4, '****') AS Updated_Contact_Information
FROM Hotels;







--(b) query/queries that make use of the following Date/Time functions (you need to use
--all the functions at least once): ISDATE, DAY, MONTH, YEAR, DATENAME, DATEADD,
--DATEDIFF.

--Check if the check-in date is a valid date. 
SELECT Res_no, Check_in_date, ISDATE(CONVERT(varchar, Check_in_date, 120)) AS IsValidDate
FROM Reservation;




--The day part of the payment date.
SELECT Payment_no, Payment_date, DAY(Payment_date) AS Payment_day
FROM Payment;





--The month from the check-in date.
SELECT Res_no, Check_in_date, MONTH(Check_in_date) AS Check_in_month
FROM Reservation;







--The year part of the event date.
SELECT Event_no, Event_date, YEAR(Event_date) AS Event_year
FROM Events;






--Retrieve the name of the month from the payment date.
SELECT Payment_no, Payment_date, DATENAME(MONTH, Payment_date) AS Payment_month_name
FROM Payment;






--Add 7 days to the check-in date as check-out-date.
SELECT Res_no, Check_in_date, DATEADD(DAY, 7, Check_in_date) AS Check_out_date
FROM Reservation;






--Calculate the difference in days between the check-in and check-out dates.
SELECT Res_no, Check_in_date, Check_out_date, DATEDIFF(DAY, Check_in_date, Check_out_date) AS Stay_duration
FROM Reservation;






--(c) query/queries that make use of the following Math functions (you need to use all
--the functions at least once): ABS, CEILING, FLOOR, POWER, SQUARE, SQRT, RANDOM,
--ROUND.

--Retrieve the absolute value of the difference between two numbers.
SELECT Emp_name, ABS(Salary - 50000) AS Salary_Difference
FROM Employees;




--Retrieve the ceiling value of room price.
SELECT Room_no, CEILING(Room_price) AS Ceil_Room_price
FROM Rooms;






--Retrieve the floor value of the payment amount.
SELECT Emp_name, FLOOR(Salary) AS Floor_Salary
FROM Employees;






--Calculate the square of the payment amount.
SELECT Payment_no, POWER(Payment_amount, 2) AS Payment_amount_square
FROM Payment;






--Retrieve the square of room price.
SELECT Room_no, SQUARE(Room_price) AS Room_price_square
FROM Rooms;






--Retrieve the square root of the payment amount.
SELECT Payment_no, SQRT(Payment_amount) AS Payment_amount_sqrt
FROM Payment;






--Generate a random number between 1 and 100
SELECT CAST(RAND() * 100 AS INT) AS Random_Number;







--Adding 0.1235 to the price and rounding it to two decimal places
SELECT Room_no, 
       Room_price, 
       ROUND(Room_price + 0.1235, 2) AS Rounded_Room_price
FROM Rooms;
