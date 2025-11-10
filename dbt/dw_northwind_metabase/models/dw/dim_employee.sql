{{ config(
    materialized='table',
    tags=['dw', 'dimension']
) }}

-- Dimensão de colaboradores (Northwind) para análises B2B.
select
    row_number() over (order by employee_nk)   as employee_sk,
    employee_nk,
    source_system,
    source_employee_id,
    first_name,
    last_name,
    job_title,
    courtesy_title,
    birth_date,
    hire_date,
    city,
    region,
    country,
    postal_code,
    phone,
    phone_extension,
    manager_empid,
    dw_load_ts
from {{ ref('stg_northwind_employees') }}
