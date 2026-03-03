/* dimension exploration */

-- explore all countries
select distinct country
from gold.dim_customers;

-- explore all categories 'major divisions'
select distinct category,subcategory
from gold.dim_products;
