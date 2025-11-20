{% snapshot employees_snapshot %}

{{
    config(
        target_schema='snapshots',
        unique_key='employee_nk',
        strategy='check',
        check_cols=[
            'first_name',
            'last_name',
            'job_title',
            'courtesy_title',
            'city',
            'region',
            'country',
            'postal_code',
            'phone',
            'manager_empid'
        ]
    )
}}

select
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

{% endsnapshot %}
