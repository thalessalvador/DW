{{ config(
    materialized='table',
    tags=['dw', 'dimension']
) }}

-- Dimensão de produtos SCD2 (a partir do snapshot).
with latest as (
    select *
    from {{ ref('products_snapshot') }}
    where dbt_valid_to is null
)
select
    row_number() over (order by product_nk) as product_sk,
    product_nk,
    source_system,
    source_product_id,
    supplier_nk,
    category_nk,
    product_name,
    category_name,
    supplier_name,
    package_details,
    unit_price,
    units_in_stock,
    units_on_order,
    reorder_level,
    rating_score,
    product_created_at,
    is_discontinued,
    dbt_valid_from,
    dbt_valid_to,
    case when dbt_valid_to is null then true else false end as current_flag
from latest
