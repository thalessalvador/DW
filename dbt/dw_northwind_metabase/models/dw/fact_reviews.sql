{{ config(
    materialized='table',
    tags=['dw', 'fact']
) }}

-- Fato de reviews públicos (produtos Metabase).
with source as (
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
),
final as (
    select
        -- Surrogate Keys
        coalesce(dp.product_sk, -1) as dim_product_sk,
        
        -- Degenerate Dimensions & Metrics
        s.review_nk,
        s.product_nk,
        s.source_system,
        s.source_review_id,
        s.reviewer_name,
        s.rating_score,
        s.created_at,
        s.review_text,
        s.dw_load_ts
    from source s
    left join {{ ref('dim_product') }} dp
        on s.product_nk = dp.product_nk
       and s.created_at >= coalesce(dp.dbt_valid_from, timestamp '1900-01-01')
       and s.created_at <  coalesce(dp.dbt_valid_to,   timestamp '9999-12-31')
)
select * from final
