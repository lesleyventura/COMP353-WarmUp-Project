INSERT INTO Locations (Name, Address, City, Province, PostalCode, Phone, WebAddress, Type, Capacity)
VALUES
('Downtown Club','123 Main St', 'Montreal', 'QC', 'H1A 2B3', '514-123-4567', 'www.downtownclub.ca', 'Head', 200),
('West Island Club','456 Elm St', 'Montreal', 'QC', 'H2A 3B4', '514-234-5678', 'www.westislandclub.ca', 'Branch', 150),
('South Shore Club','789 Pine St', 'Longueuil', 'QC', 'J4B 5C6', '450-345-6789', 'www.southshoreclub.ca', 'Branch', 120),
('Laval Branch','456 Laval St','Laval', 'QC', 'H7A 365', '450-555-5678', 'www.lavalvolleyball.ca', 'Branch', 150),
('Brossard Branch', '789 Brossard Ave', 'Brossard', 'QC', 'J4Z 2N2', '450-123-7890', 'www.brossardvolleyball.ca', 'Branch', 120),
('Longueuil Branch', '101 Longueuil Rd', 'Longueuil', 'QC', 'J4H 3K6', '450-321-6543', 'www.longueuilvolleyball.ca', 'Branch', 130),
('Quebec City Branch', '55 Boulevard Laurier', 'Quebec City', 'QC', 'GIV 4T5', '418-555-9999', 'ww.qcvolleyball.ca', 'Branch', 140),
('Sherbrooke Branch', '222 University St', 'Sherbrooke', 'QC', 'J1K 2R1', '819-888-2222', 'www.sherbrookevolleyball.ca', 'Branch', 110),
('Gatineau Branch', '333 Hull Rd', 'Gatineau', 'QC', 'J8X 3X3', '819-777-3333', 'www.gatineauvolleyball.ca', 'Branch', 125),
('Trois-Rivières Branch', '777 St-Maurice Blvd', 'Trois-Rivières', 'QC', 'G8Y 4P4', '819-555-7777', 'www.trvolleyball.ca', 'Branch', 135);

INSERT INTO FamilyMembers (FirstName, LastName, DateOfBirth, SIN, MedicareNumber, PhoneNumber, Address, City, Province, PostalCode, Email, LocationID) 
VALUES 
('Michael', 'Johnson', '1975-02-20', '345-67-8901', 'M5678901234', '514-333-4444', '123 Maple St', 'Montreal', 'QC', 'H1A1A1', 'michael.johnson@myvc.com', 1),
('Sarah', 'Williams', '1982-07-15', '456-78-9012', 'M6789012345', '438-444-5555', '789 Oak St', 'Laval', 'QC', 'H2B2B2', 'sarah.williams@myvc.com', 2),
('David', 'Smith', '1980-05-30', '567-89-0123', 'M7890123456', '514-555-6666', '456 Pine St', 'Quebec City', 'QC', 'G1V1V1', 'david.smith@myvc.com', 3),
('Emily', 'Martin', '1978-08-25', '678-90-1234', 'M8901234567', '450-666-7777', '789 Cedar Rd', 'Sherbrooke', 'QC', 'J1K1K1', 'emily.martin@myvc.com', 4),
('Daniel', 'Brown', '1973-10-12', '789-01-2345', 'M9012345678', '819-777-8888', '101 Spruce Ave', 'Gatineau', 'QC', 'J8X8X8', 'daniel.brown@myvc.com', 5),
('Olivia', 'Lefebvre', '1985-12-07', '890-12-3456', 'M0123456789', '819-888-9999', '202 Willow Ln', 'Trois-Rivières', 'QC', 'G8Y8Y8', 'olivia.lefebvre@myvc.com', 6),
('James', 'Dubois', '1976-03-18', '901-23-4567', 'M1234567890', '450-999-0000', '303 Birch Rd', 'Montreal', 'QC', 'H1A2B3', 'james.dubois@myvc.com', 7),
('Sophia', 'Tremblay', '1988-11-02', '012-34-5678', 'M2345678901', '514-222-3333', '404 Walnut St', 'Laval', 'QC', 'H3C3C3', 'sophia.tremblay@myvc.com', 8),
('William', 'Gagnon', '1981-06-09', '123-45-6789', 'M3456789012', '438-333-4444', '505 Aspen Rd', 'Longueuil', 'QC', 'J4X4X4', 'william.gagnon@myvc.com', 9),
('Charlotte', 'Roy', '1979-09-21', '234-56-7890', 'M4567890123', '514-111-2222', '606 Chestnut Ave', 'Drummondville', 'QC', 'J2B5B5', 'charlotte.roy@myvc.com', 10);

INSERT INTO ClubMembers (FirstName, LastName, DateOfBirth, Height, Weight, SIN, MedicareNumber, Phone, Address, City, Province, PostalCode, FamilyMemberID)
VALUES
('Jake', 'Johnson', '2007-06-15', 170, 65, '567890123', 'M7890123456', '514-555-6666', '123 Maple St', 'Montreal', 'QC', 'H1A1A1', 1), 
('Emily', 'Williams', '2008-09-22', 160, 55, '678901234', 'M8901234567', '438-666-7777', '789 Oak St', 'Laval', 'QC', 'H2B2B2', 2), 
('Daniel', 'Smith', '2009-05-12', 175, 70, '789012345', 'M9012345678', '514-777-8888', '456 Pine St', 'Quebec City', 'QC', 'GIVIV1', 3), 
('Olivia', 'Martin', '2010-03-25', 155, 50, '890123456', 'M0123456789', '450-888-9999', '789 Cedar Rd', 'Sherbrooke', 'QC', 'J1K1K1', 4), 
('Lucas', 'Brown', '2007-07-18', 180, 75, '901234567', 'M1234567890', '819-999-0000', '101 Spruce Ave', 'Gatineau', 'QC', 'J8X8X8', 5),
('Sophia', 'Lefebvre', '2011-11-30', 162, 58, '012345678', 'M2345678901', '819-222-3333', '202 Willow Ln', 'Trois-Rivières', 'QC', 'G8Y8Y8', 6), 
('James', 'Dubois', '2013-02-14', 150, 45,'123456789', 'М3456789012', '450-333-4444', '303 Birch Rd', 'Montreal', 'QC', 'H1A2B3', 7),
('Ava', 'Tremblay', '2009-08-21', 168, 65, '234567890', 'M4567890123', '514-111-2222', '404 Walnut St', 'Laval', 'QC', 'НЗСЗСЗ', 8),
('Ethan', 'Gagnon', '2010-12-05', 172, 67, '345678901', 'M5678901234', '438-444-5555', '505 Aspen Rd', 'Longueuil', 'QC', 'J4X4X4', 9),
('Charlotte', 'Roy', '2012-06-09', 157, 52, '456789012', 'М6789012345', '514-666-7777', '606 Chestnut Ave', 'Drummondville', 'QC', 'J2B5B5', 10);

INSERT INTO Payments (ClubMemberID, PaymentDate, AmountPaid, PaymentMethod, MembershipYear, InstallmentNumber)
VALUES
(1,'2024-01-05', 25.00, 'Credit Card', 2024, 1),
(1,'2024-02-05', 25.00, 'Credit Card', 2024, 2),
(1,'2024-03-05', 25.00, 'Credit Card', 2024, 3),
(1,'2024-04-05', 25.00, 'Credit Card', 2024, 4),
(2,'2024-01-10', 100.00, 'Debit Card', 2024, 1),
(3,'2024-01-15', 50.00, 'Credit Card', 2024, 1),
(3,'2024-02-15', 50.00, 'Credit Card', 2024, 2),
(4,'2024-01-20', 100.00, 'Debit Card', 2024, 1),
(5,'2024-01-25', 25.00, 'Cash', 2024, 1),
(5,'2024-02-25', 25.00, 'Cash', 2024, 2);

INSERT INTO Personnel (FirstName, LastName, DateOfBirth, SIN, MedicareNumber, Phone, Address, City, Province, PostalCode, Email, Role, Mandate)
VALUES
('John', 'Doe', '1980-05-10', '123456789', 'M1234567890', '514-111-2222', '123 Main St', 'Montreal', 'QC', 'HIA1A1', 'john.doe@myvc.com', 'General Manager', 'Salaried'),
(' Jane', 'Smith', '1985-08-12', '234567890', 'M0987654321', '450-222-3333', '456 Elm St', 'Laval', 'QC', 'H2B2B2', 'jane.smith@myvc.com', 'Coach', 'Volunteer'),
('Diane', 'Johnson', '1990-02-15', '345678901', 'M1122334455', '438-333-4444', '789 Pine St', 'Brossard', 'QC', 'J4Z3Z3', 'emily.johnson@myvc.com', 'Deputy Manager', 'Salaried'),
('Michael', 'Brown', '1975-09-23', '456789012', 'M2233445566', '514-444-5555', '101 Maple Ave', 'Longueuil', 'QC', 'J4H5H5', 'michael.brown@myvc.com', 'Coach', 'Volunteer'),
('Sophie', 'Martin', '1988-11-30', '567890123', 'M3344556677', '514-555-6666', '202 Cedar Rd', 'Quebec City', 'QC', 'GIV4V4', 'sophie.martin@myvc.com', 'Deputy Manager', 'Salaried'),
('David', 'Wilson', '1983-07-21', '678901234', 'M4455667788', '819-666-7777', '303 Oak St', 'Sherbrooke', 'QC', 'J1K6K6', 'david.wilson@myvc.com', 'Other', 'Volunteer'),
('Laura', 'Lefebvre', '1995-12-05', '789012345', 'M5566778899', '819-777-8888', '404 Willow Ln', 'Gatineau', 'QC', 'J8X7X7', 'laura.lefebvre@myvc.com', 'Coach', 'Salaried'),
('Patrick', 'Dubois', '1979-04-18', '890123456', 'M6677889900', '819-888-9999', '505 Birch Rd', 'Trois-Rivières', 'QC', 'G8Y8Y8', 'patrick.dubois@myvc.com', 'General Manager', 'Salaried'),
('Isabelle', 'Tremblay', '1982-06-25', '901234567', 'M7788990011', '450-999-0000', '606 Spruce Ave', 'Montreal', 'QC', 'HIAZA2', 'isabelle.tremblay@myvc.com', 'Deputy Manager', 'Volunteer'), 
('Marc', 'Gagnon', '1992-03-14', '012345678', 'M8899001122', '514-000-1111', '707 Redwood St', 'Laval', 'QC', 'H7A3A3', 'marc.gagnon@myvc.com', 'Other', 'Volunteer');

INSERT INTO WorksAt (PersonnelID, LocationID, StartDate, EndDate)
VALUES
(1, 1, '2022-01-01', NULL),
(2, 2, '2020-01-01', '2023-12-31'),
(3, 3, '2024-01-01', NULL),
(4, 4, '2023-01-01', NULL),
(5, 5, '2019-01-01', NULL),
(6, 6, '2022-01-01', NULL),
(7, 7, '2024-01-01', '2024-02-28'),
(8, 8, '2024-01-01', NULL),
(9, 9, '2023-01-01', NULL),
(10, 10, '2020-01-01', '2024-06-30');

INSERT INTO MemberGoesTo (ClubMemberID, LocationID, StartDate, EndDate)
VALUES
(1, 1, '2022-01-01', NULL),
(2, 2, '2020-01-01', '2024-06-30'),
(3, 3, '2024-01-01', NULL),
(4, 4, '2023-01-01', NULL),
(5, 5, '2019-01-01', NULL),
(6, 6, '2022-01-01', NULL),
(7, 7, '2024-01-01', '2024-05-31'),
(8, 8, '2024-01-01', NULL),
(9, 9, '2023-01-01', NULL),
(10, 10, '2020-01-01', NULL);

INSERT INTO FamilyGoesTo (FamilyMemberID, LocationID, StartDate, EndDate)
VALUES
(1, 1, '2024-01-01', NULL),
(2, 2, '2024-01-15', NULL),
(3, 3, '2023-12-10', '2024-01-10'),
(4, 1, '2024-01-11', NULL),
(5, 2, '2024-02-01', NULL),
(6, 3, '2023-11-05', '2024-01-05'),
(7, 1, '2024-01-06', NULL),
(8, 3, '2023-10-01', '2023-12-31'),
(9, 2, '2024-02-10', NULL),
(10, 1, '2023-09-15', '2024-01-20');

INSERT INTO FamilyRelation (ClubMemberID, FamilyMemberID, Relationship)
VALUES
(1, 1, 'Father'), 
(2, 3, 'Grandfather'), 
(3, 4, 'Grandmother'),
(4, 5, 'Tutor'),
(5, 6, 'Partner'), 
(6, 7, 'Friend'), 
(7, 8, 'Father'), 
(8, 9, 'Mother'),
(9, 10, 'Other'),
(10, 2, 'Mother');
