{{ config(
    materialized='table',
    tags=['dw', 'fact']
) }}

-- Fato de faturamento SaaS (faturas Metabase).
with source as (
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
),
final as (
    select
        -- Surrogate Keys
        coalesce(dc.customer_sk, -1) as dim_customer_sk,
        
        -- Degenerate Dimensions & Metrics
        s.invoice_nk,
        s.customer_nk,
        s.source_system,
        s.source_invoice_id,
        s.plan_name,
        s.payment_amount,
        s.expected_invoice_flag,
        s.date_received,
        s.dw_load_ts
    from source s
    left join {{ ref('dim_customer') }} dc
        on s.customer_nk = dc.customer_nk
       and s.date_received >= coalesce(dc.dbt_valid_from, timestamp '1900-01-01')
       and s.date_received <  coalesce(dc.dbt_valid_to,   timestamp '9999-12-31')
)
select * from final
