-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Products" (
    "ProductID" INT   NOT NULL,
    "ProductName" varchar(50)   NOT NULL,
    "Rating" INT   NOT NULL,
    "NumReviews" INT   NOT NULL,
    "DateAdded" DATE   NOT NULL,
    CONSTRAINT "pk_Products" PRIMARY KEY (
        "ProductID"
     )
);

CREATE TABLE "Transactions" (
    "TransactionID" INT   NOT NULL,
    "ProductID" INT   NOT NULL,
    "Price" DECIMAL   NOT NULL,
    "Discount" DECIMAL   NOT NULL,
    "Sales" INT   NOT NULL,
    "StockQuantity" INT   NOT NULL,
    "Category" TEXT   NOT NULL,
    CONSTRAINT "pk_Transactions" PRIMARY KEY (
        "TransactionID"
     )
);

ALTER TABLE "Transactions" ADD CONSTRAINT "fk_Transactions_ProductID" FOREIGN KEY("ProductID")
REFERENCES "Products" ("ProductID");

