# 🛍️ Retail Sales Analysis Using MySQL

## 📊 Project Overview
This project focuses on analyzing retail sales data using **MySQL** to uncover key business insights.  
It is designed to demonstrate SQL skills such as data cleaning, aggregation, grouping, filtering, and business-focused query writing.

The goal is to solve real-world business problems such as:
- Understanding overall revenue
- Identifying top-performing products and customers
- Finding monthly sales trends
- Calculating key KPIs like AOV (Average Order Value)

---

## 🗂️ Dataset
The dataset used contains retail transaction data with the following columns:

- **CustomerID** – Unique ID of each customer  
- **Product** – Product purchased  
- **City** – City where the purchase happened  
- **Quantity** – Units sold  
- **UnitPrice** – Price per unit  
- **TotalPrice** – Total amount spent  
- **PurchaseDate** – Date of transaction

---

## 📌 SQL Analysis Performed

### 1️⃣ Total Revenue  
```sql
SELECT SUM(TotalPrice) AS total_revenue
FROM SalesRawData;

2️⃣ Top 5 Products by Sales
SELECT Product, SUM(Quantity) AS total_sold
FROM SalesRawData
GROUP BY Product
ORDER BY total_sold DESC
LIMIT 5;

3️⃣ Top 5 Customers by Spending
SELECT CustomerID, SUM(TotalPrice) AS total_spent
FROM SalesRawData
GROUP BY CustomerID
ORDER BY total_spent DESC
LIMIT 5;

4️⃣ Monthly Revenue Trend
SELECT DATE_FORMAT(PurchaseDate, '%Y-%m') AS month,
       SUM(TotalPrice) AS monthly_revenue
FROM SalesRawData
GROUP BY month
ORDER BY month;

5️⃣ City-wise Revenue
SELECT City, SUM(TotalPrice) AS total_revenue
FROM SalesRawData
GROUP BY City
ORDER BY total_revenue DESC;

📈 Insights & Findings
💰 Total Revenue: ₹47,72,350
🥇 Top Product: Laptop — highest number of sales
🧑‍💼 Top Customer: CUST0049 — highest spending
📆 Monthly Trend: Highest revenue in March 2024
🏙️ Top City: Lakeside — maximum contribution to total revenue

🧠 Key Skills Demonstrated
SQL Querying
Data Cleaning & Transformation
Aggregations & Grouping
Business KPI Analysis
Monthly & City-Level Reporting

📚 Conclusion

This project demonstrates how SQL can be used to convert raw retail data into actionable business insights. It’s an excellent starting point for data analysts to build their portfolios and showcase SQL skills to recruiters.

📌 Author

👤 Gulshan Shrivastava
📧 gulshans.svp@gmail.com
💼 www.linkedin.com/in/gulshan-shrivastava-18a03716b
