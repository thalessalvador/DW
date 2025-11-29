{{ config(
    materialized="view",
    tags=["mart", "saas"]
) }}

-- Data mart para faturamento SaaS (Metabase invoices) com joins SCD2 usando o intervalo completo.
with invoices as (
    select
        fi.invoice_nk,
        fi.customer_nk,
        fi.plan_name,
        fi.payment_amount,
        fi.expected_invoice_flag,
        fi.date_received::date as invoice_date,
        dc.customer_name,
        dc.segment,
        dc.plan,
        dd.year,
        dd.month,
        dd.month_name
    from {{ ref('fact_invoices') }} fi
    left join {{ ref('dim_customer') }} dc
           on fi.dim_customer_sk = dc.customer_sk
    left join {{ ref('dim_date') }} dd
           on fi.date_received::date = dd.date_day
)
select *
from invoices
