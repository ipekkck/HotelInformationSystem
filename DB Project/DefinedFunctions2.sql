

--Function to return rooms with a price greater than or equal to a specified minimum price

CREATE FUNCTION udf_MinPrice(@minPrice INT) --Input
RETURNS TABLE --Returns the room informations
AS
RETURN
    --Return the rooms with a price greater than or equal to the @minPrice
    SELECT Room_no, Room_type, Room_price, Hotel_ID
    FROM Rooms
    WHERE Room_price >= @minPrice; --Room prices greater or equal to the specified minimum price
GO

-----
SELECT * 
FROM dbo.udf_MinPrice(5000);
-----
SELECT r.Room_no, r.Room_type, r.Room_price, h.Hotel_name 
FROM udf_MinPrice(10000) AS r 
INNER JOIN Hotels AS h 
ON r.Hotel_ID = h.Hotel_ID;
-----
EXEC sp_helptext 'udf_MinPrice';















DROP FUNCTION udf_MinPrice;
