CREATE TABLE Locations (
    LocationID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Province VARCHAR(50) NOT NULL,
    PostalCode VARCHAR(10) NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    WebAddress VARCHAR(255),
    Type ENUM('Head', 'Branch') NOT NULL,
    Capacity INT NOT NULL
);

CREATE TABLE FamilyMembers (
    FamilyMemberID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    DateOfBirth DATE NOT NULL,
    SIN CHAR(9) NOT NULL UNIQUE,
    MedicareNumber CHAR(12) NOT NULL UNIQUE,
    Phone VARCHAR(20) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Province VARCHAR(50) NOT NULL,
    PostalCode VARCHAR(10) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    LocationID INT NOT NULL,
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID) ON DELETE CASCADE
);

CREATE TABLE ClubMembers (
    ClubMemberID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Height DECIMAL(5,2) NOT NULL,
    Weight DECIMAL(5,2) NOT NULL,
    SIN CHAR(9) NOT NULL UNIQUE,
    MedicareNumber CHAR(12) NOT NULL UNIQUE,
    Phone VARCHAR(20) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Province VARCHAR(50) NOT NULL,
    PostalCode VARCHAR(10) NOT NULL,
    FamilyMemberID INT NOT NULL,
    Status ENUM('Active', 'Inactive') NOT NULL DEFAULT 'Active',  -- Added Membership Status
    FOREIGN KEY (FamilyMemberID) REFERENCES FamilyMembers(FamilyMemberID) ON DELETE CASCADE
);

CREATE TABLE Personnel (
    PersonnelID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    DateOfBirth DATE NOT NULL,
    SIN CHAR(9) NOT NULL UNIQUE,
    MedicareNumber CHAR(12) NOT NULL UNIQUE,
    Phone VARCHAR(20) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Province VARCHAR(50) NOT NULL,
    PostalCode VARCHAR(10) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    Mandate ENUM('Volunteer', 'Salaried') NOT NULL,
    Role ENUM('General Manager', 'Deputy Manager', 'Treasurer', 'Secretary', 'Administrator', 'Captain', 'Coach', 'Assistant Coach', 'Other') NOT NULL
);

CREATE TABLE Payments (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY, 
    ClubMemberID INT NOT NULL, 
    PaymentDate DATE NOT NULL, 
    AmountPaid DECIMAL(10,2) NOT NULL,
    PaymentMethod ENUM('Cash', 'Debit Card', 'Credit Card') NOT NULL, 
    MembershipYear INT NOT NULL,
    InstallmentNumber INT NOT NULL CHECK (InstallmentNumber BETWEEN 1 AND 4),
    FOREIGN KEY (ClubMemberID) REFERENCES ClubMembers(ClubMemberID) ON DELETE CASCADE
);

CREATE TABLE WorksAt (
    PersonnelID INT,
    LocationID INT,
    StartDate DATE NOT NULL,
    EndDate DATE DEFAULT NULL,
    PRIMARY KEY (PersonnelID, LocationID, StartDate),
    FOREIGN KEY (PersonnelID) REFERENCES Personnel(PersonnelID) ON DELETE CASCADE,
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID) ON DELETE CASCADE
);

CREATE TABLE MemberGoesTo (
    ClubMemberID INT,
    LocationID INT,
    StartDate DATE NOT NULL,
    EndDate DATE DEFAULT NULL,
    PRIMARY KEY (ClubMemberID, LocationID, StartDate),
    FOREIGN KEY (ClubMemberID) REFERENCES ClubMembers(ClubMemberID) ON DELETE CASCADE,
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID) ON DELETE CASCADE
);

CREATE TABLE FamilyGoesTo (
    FamilyMemberID INT,
    LocationID INT,
    StartDate DATE NOT NULL,
    EndDate DATE DEFAULT NULL,
    PRIMARY KEY (FamilyMemberID, LocationID, StartDate),
    FOREIGN KEY (FamilyMemberID) REFERENCES FamilyMembers(FamilyMemberID) ON DELETE CASCADE,
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID) ON DELETE CASCADE
);

CREATE TABLE FamilyRelation (
    ClubMemberID INT,
    FamilyMemberID INT,
    Relationship ENUM('Father', 'Mother', 'Grandfather', 'Grandmother', 'Tutor', 'Partner', 'Friend', 'Other') NOT NULL,
    PRIMARY KEY (ClubMemberID, FamilyMemberID),
    FOREIGN KEY (ClubMemberID) REFERENCES ClubMembers(ClubMemberID) ON DELETE CASCADE,
    FOREIGN KEY (FamilyMemberID) REFERENCES FamilyMembers(FamilyMemberID) ON DELETE CASCADE
);
