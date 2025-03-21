---1️⃣ Percentage of Sales by Pizza Category

SELECT pizza_category, 
CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_category;
---📌 Result:
---Classic: 26.91%
---Supreme: 25.46%
---Chicken: 23.96%
---Veggie: 23.68%

---2️⃣ Percentage of Sales by Pizza Size

SELECT pizza_size, 
CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_size
ORDER BY pizza_size;
---📌 Result:
---Large: 45.89%
---Medium: 30.49%
---Small: 21.77%
---X-Large: 1.72%
---XX-Large: 0.12%

---3️⃣ Total Pizzas Sold by Category

SELECT pizza_category, SUM(quantity) AS Total_Quantity_Sold
FROM pizza_sales
WHERE MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC;
---📌 Result:
---Classic: 220,053
---Supreme: 208,197
---Chicken: 195,919
---Veggie: 193,690
