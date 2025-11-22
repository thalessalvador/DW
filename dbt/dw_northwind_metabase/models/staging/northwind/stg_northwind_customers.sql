{{ config(
    materialized='view',
    tags=['staging', 'northwind']
) }}

-- Normaliza clientes B2B da base Northwind e gera a chave natural (customer_nk).
select
    'NORTHWIND'                               as source_system,
    custid                                    as source_customer_id,
    'NORTHWIND_' || custid                    as customer_nk,
    companyname                               as customer_name,
    contactname                               as contact_name,
    contacttitle                              as contact_title,
    address                                   as address,
    city                                      as city,
    coalesce(nullif(region, ''), 'N/A')       as region,
    country                                   as country,
    postalcode                                as postal_code,
    phone                                     as phone,
    fax                                       as fax,
    current_timestamp                         as dw_load_ts
from {{ source('northwind', 'customer') }}