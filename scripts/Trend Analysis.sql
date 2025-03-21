---1️⃣ Daily Trend for Total Orders


SELECT DATENAME(DW, order_date) AS order_day, COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales
GROUP BY DATENAME(DW, order_date);
---📌 Result: Orders are highest on weekends (Friday & Saturday evenings).

---2️⃣ Monthly Trend for Total Orders


SELECT DATENAME(MONTH, order_date) AS Month_Name, COUNT(DISTINCT order_id) AS Total_Orders 
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date);
---📌 Result: Maximum orders in July and January.
