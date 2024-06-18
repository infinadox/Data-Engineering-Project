--Create Products table
CREATE TABLE Products (
    ProductID INTEGER PRIMARY KEY,
    ProductName TEXT,
    Rating INTEGER,
    NumReviews INTEGER,
    DateAdded DATE
);

--Create Transactions table
CREATE TABLE Transactions (
    TransactionID INTEGER PRIMARY KEY,
    ProductID INTEGER,
    Price INTEGER,
    Discount INTEGER,
    Sales INTEGER,
    StockQuantity INTEGER,
    Category TEXT,
    FOREIGN KEY (ProductID) REFERENCES Products (ProductID)