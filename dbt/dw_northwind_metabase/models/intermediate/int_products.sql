{{ config(
    materialized='view',
    tags=['intermediate', 'products']
) }}

with
stg_northwind as (
    select
        source_system,
        source_product_id,
        product_nk,
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
        is_discontinued,
        rating_score,
        product_created_at,
        dw_load_ts
    from {{ ref('stg_northwind_products') }}
),

stg_metabase as (
    select
        source_system,
        source_product_id,
        product_nk,
        supplier_nk,
        category_nk,
        product_name,
        category_name,
        vendor_name as supplier_name,
        null::varchar as package_details,
        unit_price,
        null::integer as units_in_stock,
        null::integer as units_on_order,
        null::integer as reorder_level,
        false as is_discontinued,
        rating_score,
        created_at as product_created_at,
        dw_load_ts
    from {{ ref('stg_metabase_products') }}
),

unioned as (
    select * from stg_northwind
    union all
    select * from stg_metabase
)

select
    source_system,
    source_product_id,
    product_nk,
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
    is_discontinued,
    rating_score,
    product_created_at,
    dw_load_ts
from unioned
