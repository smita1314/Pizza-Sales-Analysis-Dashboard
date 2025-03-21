
---1️⃣ Top 5 Pizzas by Revenue
SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC;
--📌 Result:

----Thai Chicken: 43K
---Barbecue Chicken: 43K
---California Chicken: 41K
---Classic Deluxe: 38K
---Spicy Italian: 35K
  
---2️⃣ Bottom 5 Pizzas by Revenue


SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC;
📌 Result:
---Spinach Supreme: 16K
---Mediterranean: 15K
---Spinach Alfredo: 15K
---Green Garden: 14K
---Brie Care: 12K
---3️⃣ Top 5 Pizzas by Quantity Sold
  
SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC;
---📌 Result:

---Classic Deluxe: 2.5K
---Barbecue Chicken: 2.4K
---Hawaiian: 2.4K
---Pepperoni Feast: 2.4K
---Thai Chicken: 2.4K
---4️⃣ Bottom 5 Pizzas by Quantity Sold


SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC;
---📌 Result:

---Soppressata: 961
---Spinach Supreme: 950
---Calabrese: 937
---Mediterranean: 934
---Brie Care: 490
---5️⃣ Top 5 Pizzas by Total Orders

SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC;
---📌 Result:
---Classic Deluxe: 2.3K
---Hawaiian: 2.3K
---Pepperoni Feast: 2.3K
---Barbecue Chicken: 2.3K
---Thai Chicken: 2.2K
---6️⃣ Bottom 5 Pizzas by Total Orders

SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC;
---📌 Result:

---Chicken Pesto: 938
---Calabrese: 918
---Spinach Supreme: 918
---Mediterranean: 912
---Brie Care: 480
---Additional Filters
---You can filter these queries further using WHERE conditions. Example:

SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
WHERE pizza_category = 'Classic'
GROUP BY pizza_name
ORDER BY Total_Orders ASC;
---📌 Filters orders only for the Classic category.
