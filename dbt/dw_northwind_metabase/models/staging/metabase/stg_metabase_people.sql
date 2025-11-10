{{ config(
    materialized='view',
    tags=['staging', 'metabase']
) }}

-- Registros da tabela people (usados pelos pedidos B2C que não mapeiam para accounts).
select
    'METABASE'                               as source_system,
    p.id                                     as source_customer_id,
    'METABASE_PERSON_' || p.id               as customer_nk,
    p.name                                   as customer_name,
    null::varchar                            as contact_name,
    null::varchar                            as contact_title,
    split_part(p.name, ' ', 1)               as first_name,
    nullif(split_part(p.name, ' ', 2), '')   as last_name,
    p.address                                as address,
    p.city                                   as city,
    p.state                                  as region,
    null::varchar                            as country,
    p.zip::varchar                           as postal_code,
    null::varchar                            as plan,
    p.source                                 as segment,
    null::int                                as seats,
    null::boolean                            as trial_converted,
    null::boolean                            as active_subscription,
    null::boolean                            as legacy_plan,
    null::timestamp                          as created_at,
    null::timestamp                          as trial_ends_at,
    null::timestamp                          as canceled_at,
    current_timestamp                        as dw_load_ts
from {{ source('metabase', 'people') }} p
