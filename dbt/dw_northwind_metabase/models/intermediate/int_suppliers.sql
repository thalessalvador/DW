{{ config(
    materialized='view',
    tags=['intermediate', 'suppliers']
) }}

-- Unifica fornecedores das fontes Northwind e Metabase (vendor).
select
    supplier_nk,
    source_system,
    cast(source_supplier_id as varchar) as source_supplier_id,
    supplier_name,
    contact_name,
    contact_title,
    city,
    region,
    country,
    phone,
    dw_load_ts
from {{ ref('stg_northwind_suppliers') }}

union all

select
    supplier_nk,
    source_system,
    source_supplier_id,
    supplier_name,
    null::varchar as contact_name,
    null::varchar as contact_title,
    null::varchar as city,
    null::varchar as region,
    null::varchar as country,
    null::varchar as phone,
    dw_load_ts
from (
    select
        supplier_nk,
        'METABASE' as source_system,
        null::varchar as source_supplier_id,
        coalesce(vendor_name, 'UNKNOWN') as supplier_name,
        min(dw_load_ts) as dw_load_ts
    from {{ ref('stg_metabase_products') }}
    group by 1,2,3,4
) m
