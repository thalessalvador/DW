{% snapshot suppliers_snapshot %}

{{
    config(
        target_schema='snapshots',
        unique_key='supplier_nk',
        strategy='check',
        check_cols=[
            'supplier_name',
            'contact_name',
            'contact_title',
            'city',
            'region',
            'country',
            'phone'
        ]
    )
}}

select
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
    dw_load_ts
from {{ ref('int_suppliers') }}

{% endsnapshot %}
