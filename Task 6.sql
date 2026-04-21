CREATE DATABASE task6;
use task6;
CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount FLOAT,
    product_id INT
);
INSERT INTO online_sales VALUES
(1, '2023-01-10', 200, 101),
(2, '2023-01-15', 150, 102),
(3, '2023-02-05', 300, 103),
(4, '2023-02-20', 250, 104),
(5, '2023-03-12', 400, 105),
(6, '2023-03-18', 350, 106),
(7, '2023-04-10', 500, 107);
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;