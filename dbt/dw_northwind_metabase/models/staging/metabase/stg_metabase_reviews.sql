{{ config(
    materialized='view',
    tags=['staging', 'metabase']
) }}

with product_map as (
    select
        lower(title) as title_key,
        min(id)      as product_id
    from {{ source('metabase', 'products') }}
    group by 1
)
-- Reviews públicos dos produtos Metabase Sample.
select
    'METABASE'                               as source_system,
    r._mb_row_id                             as source_review_id,
    'METABASE_RV_' || r._mb_row_id           as review_nk,
    case
        when prod_map.product_id is not null then 'METABASE_' || prod_map.product_id::varchar
        else 'METABASE_' || upper(trim(r.product_id))
    end                                      as product_nk,
    r.product_id                             as source_product_id,
    r.reviewer                               as reviewer_name,
    cast(r.rating as numeric(5,2))           as rating_score,
    case
        when r.created_at ~ '^\d{4}-\d{2}-\d{2}'
            then r.created_at::timestamp
        else null
    end                                      as created_at,
    r.body                                   as review_text,
    current_timestamp                        as dw_load_ts
from {{ source('metabase', 'reviews') }} r
left join product_map prod_map
       on lower(r.product_id) = prod_map.title_key
