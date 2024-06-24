# Data-Engineering-Project

The dataset includes information about 1,000 products across several categories such as electronics, apparel, food & home, books, toys & games, and more. Each product entry contains details on price, rating, stock quantity, number of reviews, discounts, sales, and the date of inventory addition. This comprehensive dataset provides a rich source of data for analysis and research.
Businesses can leverage tools like Pandas, NumPy, and visualization libraries such as Matplotlib to conduct in-depth analyses. Through Exploratory Data Analysis (EDA), they can uncover key insights into popular product categories, top-selling items, pricing trends, and seasonal variations. Visualization techniques can help create intuitive graphs and charts to effectively communicate these findings.
In summary, this dataset is a versatile and valuable resource for studying e-commerce trends, understanding consumer behavior, and driving business growth. By efficiently utilizing this dataset, businesses can gain actionable insights, optimize operations, and stay competitive in today’s dynamic e-commerce landscape.

The dataset we chose for this project was retrieved from Kaggle, where we implemented the use of Pandas, SQLite, Seaborn to analyze the data in depth
We chose SQLite as the database that we would use to house our information and chose Seaborn as the foreign library that we would explore and use to analyze the dataset

SQLite is chosen for its simplicity and ease of use, suitable for small to medium-scale projects like this:
Advantages:
Lightweight and embedded within the application.
No server setup is required, suitable for single-user access.
It is ideal for prototyping and smaller datasets.

Considerations:
Not suitable for high concurrency or large-scale applications.
Limited built-in security features compared to client-server databases.

### ETL Workflow

1. **Extract**:
   - Load `e-commerce_data.csv` into a Pandas DataFrame.

2. **Transform**:
   - Clean data (handle missing values, data types).
   - Calculate total sales by category.
   - Calculate average price by product.

3. **Load**:
   - Connect to SQLite database (`ecommerce.db`).
   - Create tables and load transformed data.

### Entity-Relationship Diagram (ERD)

- **Transactions Table**:
  - TransactionID (PK)
  - CustomerID
  - OrderDate
  - ...

- **Products Table**:
  - ProductID (PK)
  - ProductName
  - Category
  - Price
  - ...
 
  - ![Beige Colorful Minimal Flowchart Infographic Graph](https://github.com/infinadox/Data-Engineering-Project/assets/161780046/9c10918b-566c-4c82-9c6a-93ddf3a8f664)
 
  - Additional Library
  - Seaborn is a powerful visualization library in Python that builds on top of Matplotlib and provides a high-level interface for drawing attractive and informative statistical graphics. 

In this project, we used Seaborn to create various visualizations to better understand and present the data.
