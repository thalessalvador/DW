{{ config(
    materialized='table',
    tags=['dw', 'fact']
) }}

-- Fato de reviews públicos (produtos Metabase).
select
    review_nk,
    source_system,
    source_review_id,
    product_nk,
    source_product_id,
    reviewer_name,
    rating_score,
    created_at,
    review_text,
    dw_load_ts
from {{ ref('stg_metabase_reviews') }}
