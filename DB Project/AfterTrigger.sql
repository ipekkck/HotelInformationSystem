
--After Trigger that runs after a new employee is added

CREATE TRIGGER tr_AfterEmployeeInsert
ON Employees
AFTER INSERT
AS
BEGIN
    DECLARE @HotelID INT;  --Declare variable
    
    --Get the Hotel ID of the newly inserted employee
    SELECT @HotelID = Hotel_ID
    FROM INSERTED;
    
    --Update the Hotel table to show that a new employee was added
    UPDATE Hotels
    SET Hotel_name = Hotel_name + ' (New Employee Added)'
    WHERE Hotel_ID = @HotelID;

    --Print a message 
    PRINT 'Hotel information updated after adding a new employee.';
END;
GO






-----Q1
INSERT INTO Employees (Emp_ID, Emp_name, Emp_position, Hotel_ID, Department_ID)
VALUES (25, 'Joe Bay', 'Manager', 1, 1);





