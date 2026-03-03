/* measure exploration */

-- find total sales
select sum(sales) as total_sales from gold.fact_sales;

-- find how many items sold
select sum(quantity) as total_quantity from gold.fact_sales;

-- find average selling price
select avg(price) as average_price from gold.fact_sales;

-- find total number of orders
select count(distinct order_number) as total_orders from gold.fact_sales;

-- find total number of customers
select count(distinct customer_id) as total_customers from gold.fact_sales;

-- find total number of products
select count(distinct product_name) as total_products from gold.dim_products;

-- create report that shows all key metrics of the business
select 'Total sales' as measure_name,sum(sales) as measure_value from gold.fact_sales
union all
select 'Total quantity' as measure_name,sum(quantity) as measure_value from gold.fact_sales
union all
select 'Average price' as measure_name,round(avg(price)) as measure_value from gold.fact_sales
union all
select 'Number of orders' as measure_name,count(distinct order_number) as measure_value from gold.fact_sales
union all
select 'Number of customers' as measure_name,count(distinct customer_id) as measure_value from gold.fact_sales
union all
select 'Number of products' as measure_name,count(distinct product_name) as measure_value from gold.dim_products;

