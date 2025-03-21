---1️⃣ Total Revenue

SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;
---📌 Result: Total Revenue = 817.86K

---2️⃣ Average Order Value


SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value FROM pizza_sales;
---📌 Result: Average Order Value = 38.31

---3️⃣ Total Pizzas Sold


SELECT SUM(quantity) AS Total_pizza_sold FROM pizza_sales;
---📌 Result: Total Pizzas Sold = 49,574

---4️⃣ Total Orders


SELECT COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales;
---📌 Result: Total Orders = 21,350

---5️⃣ Average Pizzas Per Order


SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) 
AS Avg_Pizzas_per_order FROM pizza_sales;
---📌 Result: Average Pizzas per Order = 2.32
