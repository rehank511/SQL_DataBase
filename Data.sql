INSERT INTO Department ("Department_ID", "Description", "HeadDep_ID")
VALUES ('1000', 'Administrative Department', NULL);

INSERT INTO Department ("Department_ID", "Description", "HeadDep_ID")
VALUES ('1100', 'Engieneering', NULL);

INSERT INTO Department ("Department_ID", "Description", "HeadDep_ID")
VALUES ('1101', 'Computer Science', '1100');

INSERT INTO Employee ("Empl_ID", "FName", "LName", "Position", "Department_ID", "Email", "Password", "Phone", "Office", "Priority")
VALUES ('11111', 'John', 'Markson', 'President', '1000', 'jmarkson@pacific.edu', 'JohnM123', '2876564354', 'Room 101 - Building 1', '10');

INSERT INTO Employee ("Empl_ID", "FName", "LName", "Position", "Department_ID", "Email", "Password", "Phone", "Office", "Priority")
VALUES ('11133', 'Nancy', 'Drew', 'Secretary of President', '1000', 'ndrew@pacific.edu', 'NancyD124', '1234565424', 'Room 101 - Building 1', '6');

INSERT INTO Employee ("Empl_ID", "FName", "LName", "Position", "Department_ID", "Email", "Password", "Phone", "Office", "Priority")
VALUES ('11122', 'Rehan', 'Kedia', 'Dean Of Engieneering', '1100','rkedia@pacific.edu', 'Rehan567', '4823748923', 'Room 203 - Building 3', '7');

INSERT INTO Employee ("Empl_ID", "FName", "LName", "Position", "Department_ID", "Email", "Password", "Phone", "Office", "Priority")
VALUES ('11447', 'Mark', 'Gupta', 'Faculty', '1101','mgupta@pacific.edu', 'MarkG123', '8947239482', 'Room 108 - Building 3', '6');

INSERT INTO Room ("Room_Num", "Building/Address", "Floor", "Description", "Owner_ID", "Size (sq.feet)", "Height (feet)", "Capacity", "Num_Partition")
VALUES ('211', 'Building 1', '2', 'Conference Room', '1000', '100', '15', '10', '0');

INSERT INTO Room ("Room_Num", "Building/Address", "Floor", "Description", "Owner_ID", "Size (sq.feet)", "Height (feet)", "Capacity", "Num_Partition")
VALUES ('342', 'Building 3', '3', 'Multipurpose Room', '1100', '300', '20', '20', '0');

INSERT INTO Reservation ("Room_Num", "Start_Date", "End_Date", "Reservee_ID", "Room_Charge", "Equipment_Charge", "Priority_Booked")
VALUES ('211', '2020-06-18 10:30:00.000', '2020-06-18 12:00:00.000', '11122', '0', '0', '7');

INSERT INTO Reservation ("Room_Num", "Start_Date", "End_Date", "Reservee_ID", "Room_Charge", "Equipment_Charge", "Priority_Booked")
VALUES ('342', '2020-03-09 11:30:00.000', '2020-03-09 13:00:00.000', '11111', '0', '0', '10');


INSERT INTO Equipment ("Item_ID", "Description", "Num_Item", "Price(/item)")
VALUES ('14', 'Chair', '30', '5');

INSERT INTO Equipment ("Item_ID", "Description", "Num_Item", "Price(/item)")
VALUES ('18', 'Projector', '10', '20');

INSERT INTO Equipment ("Item_ID", "Description", "Num_Item", "Price(/item)")
VALUES ('20', 'Table', '20', '8');

INSERT INTO Room_Inventory ("Room_Num", "Item_ID", "Num_Items", "Fixed")
VALUES ('211', '14', '10', 'Yes');

INSERT INTO Room_Inventory ("Room_Num", "Item_ID", "Num_Items", "Fixed")
VALUES ('211', '20', '2', 'Yes');

INSERT INTO Room_Inventory ("Room_Num", "Item_ID", "Num_Items", "Fixed")
VALUES ('211', '14', '30', 'No');

INSERT INTO Room_Inventory ("Room_Num", "Item_ID", "Num_Items", "Fixed")
VALUES ('211', '18', '1', 'Yes');

INSERT INTO Room_Inventory ("Room_Num", "Item_ID", "Num_Items", "Fixed")
VALUES ('342', '14', '20', 'Yes');

INSERT INTO Room_Inventory ("Room_Num", "Item_ID", "Num_Items", "Fixed")
VALUES ('342', '20', '4', 'Yes');

INSERT INTO Room_Inventory ("Room_Num", "Item_ID", "Num_Items", "Fixed")
VALUES ('342', '18', '2', 'Yes');

INSERT INTO Room_Inventory ("Room_Num", "Item_ID", "Num_Items", "Fixed")
VALUES ('342', '14', '30', 'No');

INSERT INTO Proxy ("Proxy_ID", "Password", "Priority", "Empl_ID")
VALUES ('11133', 'johnproxy123', '10', '11111');
