{{ config(
    materialized='table',
    tags=['dw', 'dimension']
) }}

-- Dimensão de fornecedores SCD2 (Northwind + Metabase vendors).
with latest as (
    select *
    from {{ ref('suppliers_snapshot') }}
    where dbt_valid_to is null
)
select
    row_number() over (order by supplier_nk) as supplier_sk,
    supplier_nk,
    source_system,
    source_supplier_id,
    supplier_name,
    contact_name,
    contact_title,
    city,
    region,
    country,
    phone,
    dbt_valid_from,
    dbt_valid_to,
    case when dbt_valid_to is null then true else false end as current_flag
from latest
