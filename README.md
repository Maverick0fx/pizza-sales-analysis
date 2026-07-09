Pizza Sales Analysis
MySQL
Microsoft Power BI
Power Query
DAX
Data Modeling
Data Visualization
SQL

Interactive business intelligence solution developed to analyze pizza sales performance, identify customer purchasing trends, evaluate product performance, and provide actionable insights into revenue, order behavior, and menu optimization.

Dashboard Preview

The Power BI report consists of two interactive dashboard pages designed to provide executive-level sales insights and detailed product performance analysis.

Home Dashboard

Best & Worst Sellers Dashboard

Business Problem

Restaurant businesses generate thousands of sales transactions over time, making it difficult to manually monitor sales performance, customer ordering behavior, and product popularity. Without a centralized reporting solution, identifying peak sales periods, best-selling menu items, underperforming products, and customer preferences becomes both time-consuming and inefficient.

The objective of this project was to develop an interactive business intelligence solution that transforms raw sales transactions into meaningful insights, enabling restaurant managers and business stakeholders to monitor key performance indicators (KPIs), optimize menu offerings, improve inventory planning, and support data-driven decision-making.

Project Objectives

The project was designed to:

Monitor overall sales performance through key business KPIs.
Analyze daily and monthly ordering trends.
Identify the best and worst performing pizzas.
Evaluate sales contribution by pizza category.
Analyze customer preferences by pizza size.
Measure revenue, order volume, and average order value.
Build an interactive Power BI dashboard to support business decision-making.
SQL Analysis

Before building the Power BI dashboard, the dataset was cleaned and analyzed using MySQL.

SQL was used to:

Clean and prepare the dataset for analysis.
Convert data types for accurate reporting.
Calculate business KPIs.
Analyze sales performance across multiple business dimensions.
Validate dashboard metrics before visualization.
Identify best-selling and worst-selling pizzas.
Verify Power BI calculations against SQL query results.

All SQL queries and their corresponding outputs have been documented and are included in this repository.

DAX Measures

The following DAX measures were developed to support KPI reporting, trend analysis, and interactive dashboard filtering:

Total Revenue
Average Order Value
Total Pizzas Sold
Total Orders
Average Pizzas per Order
Daily Order Trend
Monthly Order Trend
Percentage of Sales by Pizza Category
Percentage of Sales by Pizza Size
Total Sales by Pizza Category
SQL Techniques Used

Throughout the project, SQL was used for:

Data Cleaning
Data Type Conversion
Aggregate Functions
GROUP BY Aggregation
ORDER BY Sorting
Business KPI Calculations
Date Functions
Mathematical Calculations
Percentage Calculations
Top & Bottom N Analysis
Dashboard Overview

The report consists of two interactive dashboard pages.

Home Dashboard

Provides a high-level overview of overall sales performance, including key KPIs, ordering trends, sales distribution, and customer purchasing behavior.

Best & Worst Sellers Dashboard

Analyzes product performance by identifying the highest and lowest performing pizzas based on revenue, quantity sold, and total orders.

Dashboard Features

Key features of the dashboard include:

Interactive slicers for Pizza Category and Date.
Navigation buttons for seamless page switching.
KPI cards for business performance monitoring.
Daily and monthly sales trend analysis.
Sales distribution by pizza category.
Sales distribution by pizza size.
Best-selling and worst-selling pizza analysis.
Cross-filtering across dashboard visuals.
Interactive reporting for deeper business insights.
Business Impact

The dashboard provides restaurant managers and business stakeholders with a centralized view of sales performance and customer purchasing behavior.

It enables users to:

Monitor revenue performance.
Identify peak ordering periods.
Understand customer purchasing patterns.
Optimize menu offerings.
Improve inventory planning.
Evaluate product performance.
Support data-driven business decisions.
Key Insights

The dashboard helps stakeholders quickly identify:

Overall business revenue performance.
Daily and monthly ordering trends.
Pizza category sales contribution.
Customer preference by pizza size.
Best-selling pizzas by revenue.
Best-selling pizzas by quantity sold.
Most frequently ordered pizzas.
Lowest-performing menu items requiring business attention.
Key Skills Demonstrated
SQL
Data Cleaning
Power Query
Data Modeling
DAX
Power BI
Dashboard Design
KPI Reporting
Sales Data Analysis
Data Visualization
Repository Contents
pizza-sales-analysis.pbix – Interactive Power BI dashboard.
pizza-sales-analysis.sql – SQL queries used for data cleaning and business analysis.
pizza-sales-sql-query-documentation.pdf – SQL documentation with query outputs.
pizza-sales-data.xlsx – Dataset used for analysis.
dashboard-home.png – Home dashboard preview.
dashboard-best-worst-sellers.png – Best & Worst Sellers dashboard preview.
README.md – Project documentation.
What I Learned

Through this project, I strengthened my skills in SQL, Power BI, DAX, and dashboard design while gaining practical experience building KPI-driven business intelligence reports. I also improved my ability to validate business metrics in SQL before implementing them in Power BI, ensuring reporting accuracy and consistency. Additionally, I gained hands-on experience designing multi-page interactive dashboards with navigation buttons to enhance the user experience.

Future Improvements

Future enhancements may include:

Expanding the dashboard with profitability analysis.
Adding customer segmentation insights.
Creating time intelligence metrics such as Month-to-Date (MTD) and Year-to-Date (YTD) KPIs.
Implementing drill-through pages for deeper product analysis.
Automating data refresh using a live database connection.
About This Project

This project was developed as part of my data analytics learning journey to strengthen my SQL and Power BI skills through a real-world sales analysis scenario.

The project demonstrates the complete analytics workflow, from data cleaning and SQL-based business analysis to interactive dashboard development in Power BI. SQL was used to validate key business metrics before visualization, ensuring consistency and reporting accuracy.

While the dataset is publicly available for educational purposes, all SQL development, Power BI modeling, DAX calculations, dashboard design, and project documentation were completed independently as part of my portfolio.
