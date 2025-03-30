

--This stored procedure calculates how many events were handled in a specific year.

CREATE PROCEDURE CountEvents
    @Year INT,              --Input
    @EventCount INT OUTPUT  --Output 
AS
BEGIN
    SET @EventCount = 0;

    --Count the number of events in a specific year
    SELECT @EventCount = COUNT(*)
    FROM Events
    WHERE YEAR(Event_date) = @Year;

    --Print the count of events
    PRINT 'Total number of events in ' + CAST(@Year AS VARCHAR(10)) + ': ' + CAST(@EventCount AS VARCHAR(10));

    --Return the event details for the specific year
    SELECT Event_name, Event_date, Event_type, Event_location
    FROM Events
    WHERE YEAR(Event_date) = @Year;
END;

DECLARE @TotalEvents INT;
EXEC CountEvents @Year = 2022, @EventCount = @TotalEvents OUTPUT;
SELECT @TotalEvents AS 'Total Events in 2022';

EXEC sp_helptext 'CountEvents';






DROP PROCEDURE CountEvents;