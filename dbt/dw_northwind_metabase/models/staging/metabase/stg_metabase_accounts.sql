{{ config(
    materialized='view',
    tags=['staging', 'metabase']
) }}

-- Contas/Clientes B2C/SaaS com atributos de plano, segmento e datas relevantes.
select
    'METABASE'                             as source_system,
    a.id                                   as source_customer_id,
    'METABASE_' || a.id                    as customer_nk,
    a.email                                as customer_name,
    a.first_name                           as first_name,
    a.last_name                            as last_name,
    upper(coalesce(a.country, 'N/A'))      as country,
    a.plan                                 as plan,
    a.source                               as segment,
    cast(a.seats as integer)               as seats,
    a.trial_converted                      as trial_converted,
    a.active_subscription                  as active_subscription,
    a.legacy_plan                          as legacy_plan,
    -- Tratamento de datas inválidas na fonte Metabase (Ex: '0000-00-00'). Se não retornar uma data válida, atribui NULL.
    case
        when a.created_at ~ '^\d{4}-\d{2}-\d{2}'
            then a.created_at::timestamp
        else null
    end                                   as created_at,
    case
        when a.trial_ends_at ~ '^\d{4}-\d{2}-\d{2}'
            then a.trial_ends_at::timestamp
        else null
    end                                   as trial_ends_at,
    case
        when a.canceled_at ~ '^\d{4}-\d{2}-\d{2}'
            then a.canceled_at::timestamp
        else null
    end                                   as canceled_at,
    current_timestamp                      as dw_load_ts
from {{ source('metabase', 'accounts') }} a
