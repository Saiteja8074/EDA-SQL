/* Ranking analysis*/

-- which 5 products generate highest revenue
 select g.product_name,sum(f.sales) as total_revenue
from gold.fact_sales f 
left join gold.dim_products g
on g.product_key=f.product_key
group by g.product_name
order by total_revenue desc
limit 5;

-- which are 5 worst-performing products in terms of sales
 select g.product_name,sum(f.sales) as total_revenue
from gold.fact_sales f 
left join gold.dim_products g
on g.product_key=f.product_key
group by g.product_name
order by total_revenue 
limit 5;

-- find top 10 highest revenue generated customers
select g.customer_id,g.first_name,g.last_name,sum(f.sales) as total_revenue
from gold.fact_sales f 
left join gold.dim_customers g
on g.customer_id=f.customer_id
where g.customer_id is not null
group by g.customer_id,g.first_name,g.last_name
order by total_revenue desc
limit 10;

-- find 3 lowest performing customers
select g.customer_id,g.first_name,g.last_name,sum(f.sales) as total_revenue
from gold.fact_sales f 
left join gold.dim_customers g
on g.customer_id=f.customer_id
group by g.customer_id,g.first_name,g.last_name
order by total_revenue 
limit 3;
