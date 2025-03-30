
create table HotelChains (
    HC_ID INT NOT NULL,
    HC_name NVARCHAR(100),
    Contact_Information NVARCHAR(200),
	primary key(HC_ID))


create table Hotels (
    Hotel_ID INT NOT NULL,
    Hotel_name NVARCHAR(100),
    Location NVARCHAR(200),
	Hotel_rate INT,
	Contact_Information NVARCHAR(200),
	HC_ID INT,
	primary key(Hotel_ID),
    foreign key(HC_ID) references HotelChains(HC_ID))


create table Departments (
    Department_ID INT NOT NULL,
    Department_name NVARCHAR(100),
    Location NVARCHAR(200),
    Hotel_ID INT,
    primary key(Department_ID),
    foreign key(Hotel_ID) references Hotels(Hotel_ID))


create table Employees (
    Emp_ID INT NOT NULL,
    Emp_name NVARCHAR(100),
    Emp_position NVARCHAR(100),
    Phone_no NVARCHAR(20),
    Address NVARCHAR(500),
    Salary INT,
	Hotel_ID INT,
    Department_ID INT,
    Supervisor_ID INT,
    primary key(Emp_ID),
	foreign key(Hotel_ID) references Hotels(Hotel_ID),
    foreign key(Department_ID) references Departments(Department_ID),
    foreign key(Supervisor_ID) references Employees(Emp_ID))
 

create table Admins (
    Admin_ID INT NOT NULL,
    Admin_name NVARCHAR(100),
    Admin_position NVARCHAR(100),
	Emp_ID INT,
    primary key(Admin_ID),
	foreign key(Emp_ID) references Employees(Emp_ID))


create table TourCompanies (
    TourC_ID INT NOT NULL,
    TourC_name NVARCHAR(100),
    Contact_Information NVARCHAR(200),
    primary key(TourC_ID))


create table Guests (
    Guests_ID INT NOT NULL,
    Guests_name NVARCHAR(100),
    Gender NVARCHAR(20),
    Age INT,
    Address NVARCHAR(200),
    Phone_no NVARCHAR(20),
    Hotel_ID INT,
    TourC_ID INT,
    primary key(Guests_ID),
    foreign key(Hotel_ID) references Hotels(Hotel_ID),
    foreign key(TourC_ID) references TourCompanies(TourC_ID))


create table Reserver (
    Reserver_ID INT NOT NULL,
    Reserver_name NVARCHAR(100),
    Reserver_type NVARCHAR(30),
    Guests_ID INT,
    TourC_ID INT,
    primary key(Reserver_ID),
    foreign key(Guests_ID) references Guests(Guests_ID),
    foreign key(TourC_ID) references TourCompanies(TourC_ID))


create table Reservation (
    Res_no INT NOT NULL,
    Check_in_date DATE,
    Check_out_date DATE,
    Reserver_ID INT,
    Department_ID INT,
    Emp_ID INT,
    primary key(Res_no),
    foreign key(Reserver_ID) references Reserver(Reserver_ID),
    foreign key(Department_ID) references Departments(Department_ID),
    foreign key(Emp_ID) references Employees(Emp_ID))


create table Rooms (
    Room_no INT NOT NULL,
    Room_type NVARCHAR(100),
    Room_status NVARCHAR(50),
    Room_price INT,
    Room_floor INT,
    Hotel_ID INT,
    Res_no INT,
    primary key(Room_no),
	foreign key(Hotel_ID) references Hotels(Hotel_ID),
	foreign key(Res_no) references Reservation(Res_no))


create table Payment (
    Payment_no INT NOT NULL,
    Payment_amount INT,
    Payment_method NVARCHAR(50),
    Payment_date DATE,
    primary key(Payment_no))


create table Stays (
    Stay_ID INT NOT NULL,
    Start_date DATE,
    End_date DATE,
    Room_no INT,
    Guests_ID INT,
    Payment_no INT,
    primary key(Stay_ID),
    foreign key(Room_no) references Rooms(Room_no),
    foreign key(Guests_ID) references Guests(Guests_ID),
    foreign key(Payment_no) references Payment(Payment_no))


create table Events (
    Event_no INT NOT NULL,
    Event_date DATE,
    Event_type NVARCHAR(100),
    Event_name NVARCHAR(100),
    Event_location NVARCHAR(200),
    primary key(Event_no))


create table Attend (
    Guests_ID INT NOT NULL,
    Event_no INT NOT NULL,
    primary key(Guests_ID, Event_no),
    foreign key(Guests_ID) references Guests(Guests_ID),
    foreign key(Event_no) references Events(Event_no))


create table Organizes (
    Admin_ID INT NOT NULL,
    Event_no INT NOT NULL,
    primary key(Admin_ID, Event_no),
    foreign key(Admin_ID) references Admins(Admin_ID),
    foreign key(Event_no) references Events(Event_no))

