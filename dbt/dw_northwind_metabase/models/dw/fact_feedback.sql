{{ config(
    materialized='table',
    tags=['dw', 'fact']
) }}

-- Fato de feedback (NPS / avaliações de suporte).
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
