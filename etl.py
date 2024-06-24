import sqlite3
import pandas as pd

#Connect to SQLite database (create if not exists)
conn = sqlite3.connect('ecommerce.db')

#Load data from CSV into Pandas DataFrame
df = pd.read_csv('e-commerce_data.csv')

#Clean and transform data as needed before loading into SQL tables
#For simplicity, assuming columns match exactly with the table schema
#Create Products table
df_products = df[['ProductID', 'ProductName', 'Rating', 'NumReviews', 'DateAdded']].drop_duplicates()
df_products.to_sql('Products', conn, if_exists='replace', index=False)

#Create Transactions table
df_transactions = df[['ProductID', 'Price', 'Discount', 'Sales', 'StockQuantity', 'Category']]
df_transactions.to_sql('Transactions', conn, if_exists='replace', index=False)

#Commit changes and close connection
conn.commit()
conn.close()

print("Tables 'Products' and 'Transactions' created successfully and data loaded.")
