
--Instead Of Insert trigger that runs after a new stay is added

CREATE TRIGGER trg_InsteadOfInsertStay
ON Stays
INSTEAD OF INSERT
AS
BEGIN
    --Declare variables
    DECLARE @StayID INT;
    DECLARE @RoomNo INT;
    DECLARE @GuestID INT;
    DECLARE @StartDate DATE;
    DECLARE @EndDate DATE;

    --Get the values
    SELECT 
        @StayID = Stay_ID, 
        @RoomNo = Room_no, 
        @GuestID = Guests_ID, 
        @StartDate = Start_date, 
        @EndDate = End_date
    FROM INSERTED;

    --Update the room status
    UPDATE Rooms
    SET Room_status = 'Occupied'
    WHERE Room_no = @RoomNo;

    --Insert the stay details
    INSERT INTO Stays (Stay_ID, Start_date, End_date, Room_no, Guests_ID)
    VALUES (@StayID, @StartDate, @EndDate, @RoomNo, @GuestID);

    --Print a message
    PRINT 'New stay record created and room status updated to "Occupied".';
END;
GO






-----Q1
INSERT INTO Stays (Stay_ID, Start_date, End_date, Room_no, Guests_ID)
VALUES (15, '2024-12-26', '2024-12-29', 101, 1);
