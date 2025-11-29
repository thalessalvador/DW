{{ config(
    materialized='table',
    tags=['dw', 'fact']
) }}

-- Fato de eventos de produto / analytics.
with source as (
    select
        event_nk,
        source_system,
        source_event_id,
        customer_nk,
        source_account_id,
        event_name,
        event_timestamp,
        page_url,
        button_label,
        dw_load_ts
    from {{ ref('stg_metabase_analytic_events') }}
),
final as (
    select
        -- Surrogate Keys
        coalesce(dc.customer_sk, -1) as dim_customer_sk,
        
        -- Degenerate Dimensions & Metrics
        s.event_nk,
        s.customer_nk,
        s.source_system,
        s.source_event_id,
        s.event_name,
        s.event_timestamp,
        s.page_url,
        s.button_label,
        s.dw_load_ts
    from source s
    left join {{ ref('dim_customer') }} dc
        on s.customer_nk = dc.customer_nk
       and s.event_timestamp >= coalesce(dc.dbt_valid_from, timestamp '1900-01-01')
       and s.event_timestamp <  coalesce(dc.dbt_valid_to,   timestamp '9999-12-31')
)
select * from final
