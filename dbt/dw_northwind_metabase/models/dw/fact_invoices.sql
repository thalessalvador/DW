{{ config(
    materialized='table',
    tags=['dw', 'fact']
) }}

-- Fato de faturamento SaaS (faturas Metabase).
select
    invoice_nk,
    source_system,
    source_invoice_id,
    customer_nk,
    source_account_id,
    plan_name,
    payment_amount,
    expected_invoice_flag,
    date_received,
    dw_load_ts
from {{ ref('stg_metabase_invoices') }}
