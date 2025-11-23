{{ config(
    materialized='view',
    tags=['mart', 'sales']
) }}

-- Data mart consolidado de vendas.
-- As junções são simples e diretas, pois o fact_sales já resolveu as chaves substitutas (SKs) corretas para cada venda.
select
    -- Fato
    fs.order_nk,
    fs.source_system,
    fs.order_date,
    fs.quantity,
    fs.gross_amount,
    fs.net_amount,
    -- Dimensões
    dc.customer_name,
    dc.city as customer_city,
    dc.segment,
    dc.country as customer_country,
    dp.product_name,
    dcat.category_name,
    ds.supplier_name,
    de.employee_name,
    de.job_title,
    dch.channel_name
from {{ ref('fact_sales') }} fs
left join {{ ref('dim_customer') }} dc on fs.dim_customer_sk = dc.customer_sk
left join {{ ref('dim_product') }} dp on fs.dim_product_sk = dp.product_sk
left join {{ ref('dim_supplier') }} ds on fs.dim_supplier_sk = ds.supplier_sk
left join {{ ref('dim_category') }} dcat on fs.dim_category_sk = dcat.category_sk
left join {{ ref('dim_employee') }} de on fs.dim_employee_sk = de.employee_sk
left join {{ ref('dim_channel') }} dch on fs.dim_channel_sk = dch.channel_sk
