

CREATE TABLE #GuestRoomDetails(
    GuestName NVARCHAR(100),
    RoomNo INT,
    StayDuration INT, 
    HotelID INT);


INSERT INTO #GuestRoomDetails (GuestName, RoomNo, StayDuration, HotelID) VALUES ('Irina Wolf', 1050, 5, 1);
INSERT INTO #GuestRoomDetails (GuestName, RoomNo, StayDuration, HotelID) VALUES ('Mark Smith', 1254, 14, 6);
INSERT INTO #GuestRoomDetails (GuestName, RoomNo, StayDuration, HotelID) VALUES ('Isabel Rain', 224, 2, 2);
 


SELECT * FROM #GuestRoomDetails;



--Join details of room types
SELECT GRD.GuestName, GRD.RoomNo, GRD.StayDuration, R.Room_type
FROM #GuestRoomDetails GRD
JOIN Rooms R ON GRD.RoomNo = R.Room_no;


--Join stay durations
SELECT R.Room_no AS RoomNumber, 
       G.Guests_name AS GuestName,
       DATEDIFF(DAY, S.Start_date, S.End_date) AS StayDuration
FROM Rooms R
JOIN Stays S ON R.Room_no = S.Room_no
JOIN Guests G ON S.Guests_ID = G.Guests_ID
ORDER BY RoomNumber;






DROP TABLE #GuestRoomDetails;
