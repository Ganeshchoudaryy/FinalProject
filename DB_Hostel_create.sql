-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-12-18 05:58:35.591

-- tables
-- Table: Bookings
CREATE TABLE Bookings (
    Booking_ID int  NOT NULL,
    Booking_Date date  NOT NULL,
    Checkin_Date date  NOT NULL,
    Checkout_Date date  NOT NULL,
    Room_ID int  NOT NULL,
    CONSTRAINT Bookings_pk PRIMARY KEY  (Booking_ID)
);

-- Table: Employee
CREATE TABLE Employee (
    Employee_ID int  NOT NULL,
    Name varchar(50)  NOT NULL,
    Contact_Number int  NOT NULL,
    Address varchar(100)  NOT NULL,
    CONSTRAINT Employee_pk PRIMARY KEY  (Employee_ID)
);

-- Table: Guest
CREATE TABLE Guest (
    Guest_ID int  NOT NULL,
    Name varchar(50)  NOT NULL,
    Contact_Number int  NOT NULL,
    Student_ID int  NOT NULL,
    Employee_ID int  NOT NULL,
    CONSTRAINT Guest_pk PRIMARY KEY  (Guest_ID)
);

-- Table: Rooms
CREATE TABLE Rooms (
    Room_ID int  NOT NULL,
    Price int  NOT NULL,
    Type varchar(50)  NOT NULL,
    Status varchar(10)  NOT NULL,
    CONSTRAINT Rooms_pk PRIMARY KEY  (Room_ID)
);

-- Table: Student
CREATE TABLE Student (
    Student_ID int  NOT NULL,
    Name varchar(50)  NOT NULL,
    Address varchar(100)  NOT NULL,
    Gender varchar(10)  NOT NULL,
    Contact_Number int  NOT NULL,
    Room_ID int  NOT NULL,
    CONSTRAINT Student_pk PRIMARY KEY  (Student_ID)
);

-- foreign keys
-- Reference: Bookings_Rooms (table: Bookings)
ALTER TABLE Bookings ADD CONSTRAINT Bookings_Rooms
    FOREIGN KEY (Room_ID)
    REFERENCES Rooms (Room_ID);

-- Reference: Guest_Employee (table: Guest)
ALTER TABLE Guest ADD CONSTRAINT Guest_Employee
    FOREIGN KEY (Employee_ID)
    REFERENCES Employee (Employee_ID);

-- Reference: Guest_Student (table: Guest)
ALTER TABLE Guest ADD CONSTRAINT Guest_Student
    FOREIGN KEY (Student_ID)
    REFERENCES Student (Student_ID);

-- Reference: Student_Rooms (table: Student)
ALTER TABLE Student ADD CONSTRAINT Student_Rooms
    FOREIGN KEY (Room_ID)
    REFERENCES Rooms (Room_ID);

-- End of file.

