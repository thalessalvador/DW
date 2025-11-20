{{ config(
    materialized='table',
    tags=['dw', 'dimension']
) }}

-- Dimensão de colaboradores (Northwind) SCD2.
with latest as (
    select *
    from {{ ref('employees_snapshot') }}
    where dbt_valid_to is null
)
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
    dbt_valid_from,
    dbt_valid_to,
    case when dbt_valid_to is null then true else false end as current_flag
from latest
