SELECT * FROM [dbo].[pizza_sales];

--Total revenue

SELECT SUM(total_price) as Total_Revenue 
FROM [dbo].[pizza_sales];

--Average order value

SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value 
FROM [dbo].[pizza_sales];

--Total Pizza sold

SELECT SUM(quantity) AS Total_pizza_sold 
FROM [dbo].[pizza_sales];

--Total Orders

SELECT COUNT(DISTINCT order_id) AS Total_Orders 
FROM [dbo].[pizza_sales];

-- Average Pizzas Per Order

SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS Avg_Pizzas_per_order
FROM [dbo].[pizza_sales];

--Daily Trend for Total Orders

SELECT DATENAME(DW, order_date) AS order_day, COUNT(DISTINCT order_id) AS total_orders 
FROM [dbo].[pizza_sales]
GROUP BY DATENAME(DW, order_date)

--Monthly Trend for Orders

select DATENAME(MONTH, order_date) as Month_Name, COUNT(DISTINCT order_id) as Total_Orders
from [dbo].[pizza_sales]
GROUP BY DATENAME(MONTH, order_date)

--% of Sales by Pizza Category

SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM [dbo].[pizza_sales]
GROUP BY pizza_category

--% of Sales by Pizza Size

SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM [dbo].[pizza_sales]
GROUP BY pizza_size
ORDER BY pizza_size

--total Pizzas Sold by Pizza Category

SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM [dbo].[pizza_sales]
WHERE MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC

--Top 5 Pizzas by Revenue

SELECT Top 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM [dbo].[pizza_sales]
GROUP BY pizza_name
ORDER BY Total_Revenue DESC

-- Bottom 5 Pizzas by Revenue

SELECT Top 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM[dbo].[pizza_sales]
GROUP BY pizza_name
ORDER BY Total_Revenue ASC

--Top 5 Pizzas by Quantity

SELECT Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM [dbo].[pizza_sales]
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC

--Bottom 5 Pizzas by Quantity

SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM [dbo].[pizza_sales]
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC

--Top 5 Pizzas by Total Orders

SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM [dbo].[pizza_sales]
GROUP BY pizza_name
ORDER BY Total_Orders DESC

--Borrom 5 Pizzas by Total Orders

SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM [dbo].[pizza_sales]
GROUP BY pizza_name
ORDER BY Total_Orders ASC











