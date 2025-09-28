-- Total revenue generated
SELECT SUM(TotalPrice) AS total_revenue
FROM SalesRawData;

-- Top 5 best-selling products by quantity
SELECT Product, SUM(Quantity) AS total_sold
FROM SalesRawData
GROUP BY Product
ORDER BY total_sold DESC
LIMIT 5;

-- Top 5 customers by total spending
SELECT CustomerID, SUM(TotalPrice) AS total_spent
FROM SalesRawData
GROUP BY CustomerID
ORDER BY total_spent DESC
LIMIT 5;

-- Monthly revenue trend
SELECT DATE_FORMAT(PurchaseDate, '%Y-%m') AS month,
       SUM(TotalPrice) AS monthly_revenue
FROM SalesRawData
GROUP BY month
ORDER BY month;

-- City-wise revenue distribution
SELECT City, SUM(TotalPrice) AS total_revenue
FROM SalesRawData
GROUP BY City
ORDER BY total_revenue DESC;

-- Average order value (AOV)
SELECT ROUND(SUM(TotalPrice) / COUNT(*), 2) AS avg_order_value
FROM SalesRawData;

-- Top 10 customers by average order value
SELECT CustomerID,
       ROUND(SUM(TotalPrice) / COUNT(*), 2) AS avg_order_value
FROM SalesRawData
GROUP BY CustomerID
ORDER BY avg_order_value DESC
LIMIT 10;
