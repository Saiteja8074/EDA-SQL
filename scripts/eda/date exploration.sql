/* date exploration */

-- find date of first and last order 
-- how many months of sales
select min(order_date) as first_order_date,
max(order_date) as last_order_date,
timestampdiff(month,min(order_date),max(order_date)) as range_months
from gold.fact_sales;

-- find youngest and oldest customer
select
min(birth_date) oldest_birthdate,
timestampdiff(year,min(birth_date),curdate()) oldest_age,
max(birth_date) youngest_birthdate,
timestampdiff(year,max(birth_date),curdate()) youngest_age
from gold.dim_customers;
