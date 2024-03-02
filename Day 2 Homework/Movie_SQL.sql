CREATE TABLE Salesperson (
    SalespersonID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Car (
    CarID INT PRIMARY KEY,
    Make VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    SerialNumber VARCHAR(50),
    SalespersonID INT,
    FOREIGN KEY (SalespersonID) REFERENCES Salesperson(SalespersonID)
);

CREATE TABLE Invoice (
    InvoiceID INT PRIMARY KEY,
    SalespersonID INT,
    CustomerID INT,
    CarID INT,
    SalePrice DECIMAL(10,2),
    Date DATE,
    FOREIGN KEY (SalespersonID) REFERENCES Salesperson(SalespersonID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (CarID) REFERENCES Car(CarID)
);

CREATE TABLE ServiceTicket (
    TicketID INT PRIMARY KEY,
    CustomerID INT,
    CarID INT,
    Date DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (CarID) REFERENCES Car(CarID)
);

CREATE TABLE Mechanic (
    MechanicID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE ServiceRecord (
    RecordID INT PRIMARY KEY,
    CarID INT,
    MechanicID INT,
    Date DATE,
    Description TEXT,
    FOREIGN KEY (CarID) REFERENCES Car(CarID),
    FOREIGN KEY (MechanicID) REFERENCES Mechanic(MechanicID)
);

CREATE TABLE Part (
    PartID INT PRIMARY KEY,
    Name VARCHAR(50),
    Price DECIMAL(5,2)
);

CREATE TABLE ServiceRecordPart (
    RecordID INT,
    PartID INT,
    FOREIGN KEY (RecordID) REFERENCES ServiceRecord(RecordID),
    FOREIGN KEY (PartID) REFERENCES Part(PartID),
    PRIMARY KEY (RecordID, PartID)
);
