select * from pizza_sales;

truncate table pizza_sales;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Pizza Sales/pizza_sales.csv'
INTO TABLE pizza_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


describe pizza_sales;

ALTER TABLE pizza_sales
MODIFY COLUMN order_time TIME;

ALTER TABLE pizza_sales
MODIFY unit_price DECIMAL(10,2),
MODIFY total_price DECIMAL(10,2);

SELECT
MAX(LENGTH(pizza_name_id)) AS pizza_name_id_len,
MAX(LENGTH(pizza_size)) AS pizza_size_len,
MAX(LENGTH(pizza_category)) AS pizza_category_len,
MAX(LENGTH(pizza_ingredients)) AS pizza_ingredients_len,
MAX(LENGTH(pizza_name)) AS pizza_name_len
FROM pizza_sales;

ALTER TABLE pizza_sales
MODIFY pizza_name_id VARCHAR(16),
MODIFY pizza_size VARCHAR(5),
MODIFY pizza_category VARCHAR(10),
MODIFY pizza_ingredients VARCHAR(100),
MODIFY pizza_name VARCHAR(45);

ALTER TABLE pizza_sales
MODIFY order_date DATE;




-- TOTAL REVENUE

select sum(total_price) as total_revenue 
from pizza_sales;

-- AVG ORDER VALUE 
select sum(total_price)/COUNT(DISTINCT order_id)  as avg_order_value
from pizza_sales;

-- TOTAL PIZZA SOLD 
select
SUM(quantity) as total_pizzas_sold
from pizza_sales;

-- TOTAL ORDERS PLACED 

select * from pizza_sales;

select
COUNT(distinct order_id) as total_orders
from pizza_sales;

-- avg_pizzas_per_order
select
SUM(quantity)/COUNT(distinct order_id)  as avg_pizza_per_order
from pizza_sales;

-- DAILY TRENDS FOR TOTAL ORDERS 

select * from pizza_sales;

select
order_date,
day(order_date) as order_day,
dayname(order_date) as day_of_week,
monthname(order_date) as `month`,
COUNT(distinct order_id) as total_orders
from pizza_sales
group by 
order_date;

select
dayname(order_date) as day_of_week,
COUNT(distinct order_id) as total_orders
from pizza_sales
group by 
day_of_week;

-- MONTHLY TRENDS FOR TOTAL ORDERS 
select
year(order_date) as `year`,
month(order_date) as month_no,
monthname(order_date) as `month`,
COUNT(distinct order_id) as total_orders
from pizza_sales
group by 
`year`,
month_no,
`month`
order by `year`, month_no;

-- PERCENTAGE OF SALES BY PIZZA CATEGORY

select
sum(total_price) as total_sales,
pizza_category,
round(sum(total_price)/
		(select 	
        sum(total_price) 	
        from pizza_sales
      --  WHERE month(order_date) = 1 
      ) 
      *100,2
) as percentage_of_sales  
from  pizza_sales
-- WHERE month(order_date) = 1
group by pizza_category;

select *  from  pizza_sales;

-- PERCENTAGE OF SALES BY PIZZA SIZE
select 
sum(total_price) as total_sales,
pizza_size,
round(
	sum(total_price)/
	(select sum(total_price)
    from pizza_sales)
    *100,2) 
    as percentage_of_size

from pizza_sales
group by pizza_size;

-- TOTAL PIZZA SOLD BY PIZZA CATEGORY

select 
sum(total_price) as total_sales,
pizza_category
from pizza_sales
group by pizza_category;


-- TOP 5 SELLERS BY TOTAL REVENUE
select 
pizza_name,
sum(total_price) as total_revenue
from pizza_sales
group by
pizza_name
order by total_revenue desc
limit 5
;

-- BOTTOM 5 SELLERS BY TOTAL REVENUE
select 
pizza_name,
sum(total_price) as total_revenue
from pizza_sales
group by
pizza_name
order by total_revenue asc
limit 5;

-- TOP 5 SELLERS BY TOTAL PIZZAS SOLD
select 
pizza_name,
sum(quantity) as total_pizza_sold
from pizza_sales
group by
pizza_name
order by total_pizza_sold desc
limit 5
;

-- BOTTOM 5 SELLERS BY TOTAL PIZZAS SOLD
select 
pizza_name,
sum(quantity) as total_pizza_sold
from pizza_sales
group by
pizza_name
order by total_pizza_sold asc
limit 5
;
select current_user()