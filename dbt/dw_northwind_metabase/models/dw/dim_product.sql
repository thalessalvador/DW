{{ config(
    materialized='table',
    tags=['dw', 'dimension']
) }}

-- Dimensão de produtos combinando catálogo Northwind (B2B) e Metabase (B2C/SaaS).
with unioned as (
    select
        product_nk,
        source_system,
        source_product_id,
        product_name,
        category_name,
        supplier_name,
        null::varchar                        as vendor_name,
        package_details,
        unit_price,
        units_in_stock,
        units_on_order,
        reorder_level,
        null::numeric(5,2)                   as rating_score,
        null::timestamp                      as product_created_at,
        is_discontinued,
        dw_load_ts
    from {{ ref('stg_northwind_products') }}

    union all

    select
        product_nk,
        source_system,
        source_product_id,
        product_name,
        category_name,
        null::varchar                        as supplier_name,
        vendor_name,
        null::varchar                        as package_details,
        unit_price,
        null::integer                        as units_in_stock,
        null::integer                        as units_on_order,
        null::integer                        as reorder_level,
        rating_score,
        created_at                           as product_created_at,
        false                                 as is_discontinued,
        dw_load_ts
    from {{ ref('stg_metabase_products') }}
)
select
    row_number() over (order by product_nk)    as product_sk,
    *
from unioned
