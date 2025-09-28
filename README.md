# pizza-sales-performance-dashboard-sql-powerbi

# Description

Designed and developed an interactive Power BI dashboard powered by SQL to analyze pizza sales data and track key business performance metrics.

## Key Highlights

Extracted and cleaned data using SQL queries to calculate KPIs: Total Revenue, Average Order Value, Total Pizzas Sold, Total Orders, and Average Pizzas per Order.

Built insightful Power BI visuals including:

📅 Daily & Monthly order trends

🍕 Sales distribution by pizza category and size

⭐ Top 5 and Bottom 5 pizzas by Revenue, Orders, and Quantity

Delivered actionable insights into customer preferences, sales patterns, and underperforming products.

## SQL DataBase Setup & Data Preparation

I started by opening Microsoft SQL Server and creating a new database. Then, I imported the pizza sales datasets into the database. To gain insights into business performance, I analyzed key performance indicators (KPIs). I also extracted and cleaned the data using SQL queries, which have been documented in a separate file.

## Power BI Data Cleaning & Transformation

I connected Power BI to the SQL Server database and imported the pizza sales datasets. In Power Query, I performed data cleaning and transformation. For example, in the 'pizza size' column, I replaced letter values with corresponding words using the 'Replace Values' option. From the 'order date' column, I extracted the day name and created a conditional column that assigned numbers to days of the week (e.g., Sunday = 1, Monday = 2, Tuesday = 3, etc.). These steps were done to improve the accuracy of visuals and reports.

## DAX Measures & Calculated Columns for KPI Analysis

Based on the KPI requirements, I created DAX measures and calculated columns. I extracted the day name and month name from the date field, and then used the LEFT function to display only the first three letters (e.g., 'Mon', 'Jan') for cleaner visuals. 

## Conclusion 

The Pizza Sales Performance Dashboard project successfully demonstrates how data can be transformed into actionable business insights using SQL for backend data handling and Power BI for interactive visualizations.

By leveraging SQL, I efficiently created the database, imported and cleaned the pizza sales dataset, and wrote queries to extract relevant metrics. Then, using Power BI, I performed further data transformation, created calculated columns and DAX measures, and developed a visually compelling dashboard that highlights key performance indicators (KPIs) such as total revenue, sales trends, popular pizza sizes, and sales distribution by day and month.

This project helped improve data-driven decision-making by identifying high-performing products, peak sales periods, and opportunities for business growth. Overall, it showcases my ability to integrate database management with business intelligence tools to deliver end-to-end data solutions.

## Pizza Sales Performance Reports
<img width="1487" height="803" alt="Pizza sales reports" src="https://github.com/user-attachments/assets/5978ccb0-d082-444a-a906-59d05988f567" />
<img width="1482" height="804" alt="pizzas sales report 2" src="https://github.com/user-attachments/assets/0cd8b153-066d-4b89-9313-542e5d53875a" />
