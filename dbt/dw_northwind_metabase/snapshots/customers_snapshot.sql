{% snapshot customers_snapshot %}

{{
    config(
        target_schema='snapshots',
        unique_key='customer_nk',
        strategy='check',
        check_cols=['customer_name', 'contact_name', 'first_name', 'last_name', 'address', 'city', 'region', 'country', 'postal_code', 'plan', 'segment', 'seats', 'active_subscription', 'canceled_at']
    )
}}

select
    customer_nk,
    source_system,
    source_customer_id,
    customer_name,
    contact_name,
    contact_title,
    first_name,
    last_name,
    address,
    city,
    region,
    country,
    postal_code,
    plan,
    segment,
    seats,
    trial_converted,
    active_subscription,
    legacy_plan,
    created_at,
    trial_ends_at,
    canceled_at,
    dw_load_ts
from {{ ref('int_customers') }}

{% endsnapshot %}
