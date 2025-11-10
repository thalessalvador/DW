{{ config(
    materialized='table',
    tags=['dw', 'fact']
) }}

-- Fato de eventos de produto / analytics.
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
