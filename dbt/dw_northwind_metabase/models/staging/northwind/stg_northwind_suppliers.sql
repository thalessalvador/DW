{{ config(
    materialized='view',
    tags=['staging', 'northwind']
) }}

-- Fornecedores Northwind com NK padronizada.
select
    'NORTHWIND'                               as source_system,
    s.supplierid                              as source_supplier_id,
    'NORTHWIND_SUP_' || s.supplierid          as supplier_nk,
    s.companyname                             as supplier_name,
    s.contactname                             as contact_name,
    s.contacttitle                            as contact_title,
    s.city                                    as city,
    coalesce(nullif(s.region, ''), 'N/A')     as region,
    s.country                                 as country,
    s.phone                                   as phone,
    current_timestamp                         as dw_load_ts
from {{ source('northwind', 'supplier') }} s
