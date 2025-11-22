{% snapshot products_snapshot %}

{{
    config(
        target_schema='snapshots',
        unique_key='product_nk',
        strategy='check',
        check_cols=['product_name', 'supplier_name', 'unit_price', 'rating_score']
    )
}}

select
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
    dw_load_ts
from {{ ref('int_products') }}

{% endsnapshot %}
