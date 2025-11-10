{{ config(
    materialized='view',
    tags=['mart', 'sales']
) }}

-- Data mart consolidado de vendas usando a fato unificada.
select
    fs.*,
    dc.customer_name,
    dp.product_name,
    dp.category_name,
    dp.vendor_name
from {{ ref('fact_sales') }} fs
left join {{ ref('dim_customer') }} dc
       on fs.customer_nk = dc.customer_nk
      and dc.current_flag
left join {{ ref('dim_product') }} dp
       on fs.product_nk = dp.product_nk
