
--Function to calculate the total stay duration for a guest

CREATE FUNCTION udf_TotalStayDuration(@GuestID INT) --Input
RETURNS INT --Returns the total stay duration
AS
BEGIN
    DECLARE @TotalDuration INT; --Declare variable 
    SET @TotalDuration = 0;

    --Calculate the total stay duration in days
    SELECT @TotalDuration = SUM(DATEDIFF(DAY, Start_date, End_date))
    FROM Stays
    WHERE Guests_ID = @GuestID;

    --Cases where no stays are found
    IF @TotalDuration IS NULL
        SET @TotalDuration = 0;

    --Return the total duration
    RETURN @TotalDuration;
END;
GO

DECLARE @TotalStayDays INT;
SELECT @TotalStayDays = dbo.udf_TotalStayDuration(1);
PRINT 'Total Stay Duration for Guest 1: ' + CAST(@TotalStayDays AS VARCHAR);

-----
DECLARE @GuestID INT = 1; 
SELECT dbo.udf_TotalStayDuration(@GuestID) AS Total_Stay_Duration;

-----
SELECT g.Guests_ID, g.Guests_name,
    dbo.udf_TotalStayDuration(g.Guests_ID) AS Total_Stay_Duration
FROM Guests g;

-----
EXEC sp_helptext 'udf_TotalStayDuration';







DROP FUNCTION udf_TotalStayDuration;




