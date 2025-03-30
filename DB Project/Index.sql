

ALTER TABLE Hotels
DROP CONSTRAINT PK__Hotels__AA4FCFB131D13F3E;








--Clustered Index
CREATE CLUSTERED INDEX ix_Hotels_NameID
ON Hotels(Hotel_ID, Hotel_name);





--NonClustered Index
CREATE NONCLUSTERED INDEX ix_Employees_EmpName
ON Employees(Emp_name);





--Unique Index
ALTER TABLE Rooms
ADD CONSTRAINT uq_Rooms_RoomNo
UNIQUE(Room_no);



EXEC sp_helpindex 'Hotels';
EXEC sp_helpindex 'Employees';
EXEC sp_helpindex 'Rooms';


