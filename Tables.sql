CREATE TABLE Department (
    "Department_ID" int CHECK ("Department_ID" between 1000 and 9999) PRIMARY KEY,
    "Description" varchar(255),
    "HeadDep_ID" int,
    FOREIGN KEY ("HeadDep_ID") REFERENCES Department("Department_ID")
);

CREATE TABLE Employee (
    "Empl_ID" int CHECK ("Empl_ID" between 10000 and 99999) PRIMARY KEY,
    "FName" varchar(255) NOT NULL,
	"LName" varchar(255),
  "Position" varchar(255),
    "Department_ID" int NOT NULL,
	"Email" varchar(255) NOT NULL,
	"Password" varchar(255) NOT NULL,
	"Phone" bigint CHECK ("Phone" between 1000000000 and 9999999999),
	"Office" varchar(255),
	"Priority" int CHECK ("Priority" between 1 and 10),
	FOREIGN KEY ("Department_ID") REFERENCES Department("Department_ID") ON DELETE CASCADE
);

CREATE TABLE Room (
    "Room_Num" int CHECK ("Room_Num" between 100 and 999) PRIMARY KEY,
    "Building/Address" varchar(255),
	"Floor" int CHECK ("Floor" >= 1),
    "Description" varchar(255),
    "Owner_ID" int NOT NULL,
	"Size (sq.feet)" int CHECK ("Size (sq.feet)" >= 100),
	"Height (feet)" int CHECK ("Height (feet)" > 9),
	"Capacity" int CHECK ("Capacity" >= 1),
	"Num_Partition" int CHECK ("Num_Partition" >= 0),
	FOREIGN KEY ("Owner_ID") REFERENCES Department("Department_ID")
);

CREATE TABLE Reservation (
    "Reservation_ID" int IDENTITY(1,1) PRIMARY KEY,
    "Room_Num" int NOT NULL,
	"Start_Date" DATETIME NOT NULL,
	"End_Date" DATETIME NOT NULL,
    "Reservation Date" DATETIME DEFAULT (CURRENT_TIMESTAMP),
    "Reservee_ID" int NOT NULL,
	"Room_Charge" int CHECK ("Room_Charge" >= 0),
	"Equipment_Charge" int CHECK ("Equipment_Charge" >= 0),
	"Priority_Booked" int NOT NULL,
	FOREIGN KEY ("Room_Num") REFERENCES Room("Room_Num"),
	FOREIGN KEY ("Reservee_ID") REFERENCES Employee("Empl_ID") 
);

CREATE TABLE Equipment (
    "Item_ID" int CHECK ("Item_ID" between 10 and 99) PRIMARY KEY,
    "Description" varchar(255),
    "Num_Item" int CHECK ("Num_Item" >= 0),
	"Price(/item)" int CHECK ("Price(/item)" >= 0)
);

CREATE TABLE Room_Inventory (
    "Serial_ID" int IDENTITY(1,1) PRIMARY KEY,
	"Room_Num" int NOT NULL,
    "Item_ID" int NOT NULL,
    "Num_Items" int CHECK ("Num_Items" >= 0),
	"Fixed" varchar(255) CHECK ("Fixed" IN ('Yes', 'No')),
	FOREIGN KEY ("Room_Num") REFERENCES Room("Room_Num") ON DELETE CASCADE,
	FOREIGN KEY ("Item_ID") REFERENCES Equipment("Item_ID") ON DELETE CASCADE
);

CREATE TABLE Proxy (
	"Proxy_ID" int PRIMARY KEY,
	"ProxyEmpl_ID" int NOT NULL,
  "Priority" int CHECK ("Priority" between 1 and 10) NOT NULL,
	"Empl_ID" int NOT NULL,
	FOREIGN KEY ("Empl_ID") REFERENCES Employee("Empl_ID"),
  FOREIGN KEY ("Proxy_ID") REFERENCES Employee("Empl_ID")
);
