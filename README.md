# Task 6 - Sales Trend Analysis Using SQL

## 📌 Objective
To analyze monthly revenue and order volume using SQL aggregation functions.

## 🛠 Tools Used
- MySQL Workbench

## 📂 Dataset
Table Name: `online_sales`

Columns:
- order_id
- order_date
- amount
- product_id

## 🔍 Concepts Used
- GROUP BY (year, month)
- SUM() → to calculate total revenue
- COUNT(DISTINCT order_id) → to calculate order volume
- ORDER BY → to sort results

## 📊 SQL Query

```sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;
