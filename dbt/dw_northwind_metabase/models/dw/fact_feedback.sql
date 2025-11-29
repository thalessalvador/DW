{{ config(
    materialized='table',
    tags=['dw', 'fact']
) }}

-- Fato de feedback (NPS / avaliações de suporte).
with source as (
    select
        feedback_nk,
        source_system,
        source_feedback_id,
        customer_nk,
        source_account_id,
        contact_email,
        rating_score,
        rating_label,
        date_received,
        feedback_text,
        dw_load_ts
    from {{ ref('stg_metabase_feedback') }}
),
final as (
    select
        -- Surrogate Keys
        coalesce(dc.customer_sk, -1) as dim_customer_sk,
        
        -- Degenerate Dimensions & Metrics
        s.feedback_nk,
        s.customer_nk,
        s.source_system,
        s.source_feedback_id,
        s.contact_email,
        s.rating_score,
        s.rating_label,
        s.date_received,
        s.feedback_text,
        s.dw_load_ts
    from source s
    left join {{ ref('dim_customer') }} dc
        on s.customer_nk = dc.customer_nk
       and s.date_received >= coalesce(dc.dbt_valid_from, timestamp '1900-01-01')
       and s.date_received <  coalesce(dc.dbt_valid_to,   timestamp '9999-12-31')
)
select * from final
