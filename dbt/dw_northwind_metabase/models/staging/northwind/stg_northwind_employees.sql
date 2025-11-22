{{ config(
    materialized='view',
    tags=['staging', 'northwind']
) }}

-- Colaboradores Northwind com atributos de localização e datas chave.
select
    'NORTHWIND'                                   as source_system,
    e.empid                                       as source_employee_id,
    'NORTHWIND_' || e.empid                       as employee_nk,
    e.firstname                                   as first_name,
    e.lastname                                    as last_name,
    e.title                                       as job_title,
    e.titleofcourtesy                             as courtesy_title,
    cast(e.birthdate as date)                     as birth_date,
    cast(e.hiredate as date)                      as hire_date,

    e.city                                        as city,
    coalesce(nullif(e.region, ''), 'N/A')         as region,
    e.country                                     as country,
    e.postalcode                                  as postal_code,
    e.phone                                       as phone,
    e.extension                                   as phone_extension,
    e.mgrid                                       as manager_empid,
    current_timestamp                             as dw_load_ts
from {{ source('northwind', 'employee') }} e
