

ALTER TABLE Employees
ADD CONSTRAINT DEFAULT_Employees_Salary
DEFAULT 50000 FOR Salary;

ALTER TABLE Reservation
ADD CONSTRAINT DEFAULT_Reservation_CheckInDate
DEFAULT GETDATE() FOR Check_in_date;

ALTER TABLE Rooms
ADD CONSTRAINT DEFAULT_Rooms_RoomStatus
DEFAULT 'Available' FOR Room_status;





ALTER TABLE Guests
ADD CONSTRAINT CHECK_Guests_Gender
CHECK (Gender IN ('Male', 'Female'));

ALTER TABLE Hotels
ADD CONSTRAINT CHECK_Hotels_HotelRate
CHECK (Hotel_rate <= 7);

ALTER TABLE Rooms
ADD CONSTRAINT CHECK_Rooms_RoomFloor
CHECK (Room_floor BETWEEN 1 AND 100);