{{ config(
    materialized='view',
    tags=['staging', 'metabase']
) }}

-- Catálogo de produtos Metabase Sample (B2C/SaaS) com atributos de preço e rating.
select
    'METABASE'                               as source_system,
    p.id                                     as source_product_id,
    'METABASE_' || p.id                      as product_nk,
    p.title                                  as product_name,
    p.category                               as category_name,
    p.vendor                                 as vendor_name,
    cast(p.price as numeric(12,4))           as unit_price,
    cast(p.rating as numeric(5,2))           as rating_score,
    case
        when p.created_at ~ '^\d{4}-\d{2}-\d{2}'
            then p.created_at::timestamp
        else null
    end                                     as created_at,
    current_timestamp                        as dw_load_ts
from {{ source('metabase', 'products') }} p
