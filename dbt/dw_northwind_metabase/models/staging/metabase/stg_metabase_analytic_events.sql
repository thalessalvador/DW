{{ config(
    materialized='view',
    tags=['staging', 'metabase']
) }}

-- Eventos de analytics (produto/app) para análises de comportamento.
select
    'METABASE'                               as source_system,
    ae.id                                    as source_event_id,
    'METABASE_EVT_' || ae.id                 as event_nk,
    case
        when acc.id is not null then 'METABASE_ACCOUNT_' || acc.id::varchar
        else null
    end                                      as customer_nk,
    ae.account_id                            as source_account_id,
    ae.event                                 as event_name,
    -- Tratamento de datas inválidas na fonte Metabase (Ex: '0000-00-00'). Se não retornar uma data válida, atribui NULL.
    -- Tratamento de datas inválidas na fonte Metabase (Ex: '0000-00-00'). Se não retornar uma data válida, atribui NULL.
    -- Date parsing: Handles localized format (e.g., "julho 28, 2025, 11:18 AM")
    case
        when ae."timestamp" ~ '^\d{4}-\d{2}-\d{2}' then ae."timestamp"::timestamp
        else
            to_timestamp(
                replace(
                replace(
                replace(
                replace(
                replace(
                replace(
                replace(
                replace(
                replace(
                replace(
                replace(
                replace(lower(ae."timestamp"), 
                    'janeiro', 'january'),
                    'fevereiro', 'february'),
                    'março', 'march'),
                    'abril', 'april'),
                    'maio', 'may'),
                    'junho', 'june'),
                    'julho', 'july'),
                    'agosto', 'august'),
                    'setembro', 'september'),
                    'outubro', 'october'),
                    'novembro', 'november'),
                    'dezembro', 'december'),
                'fmmonth dd, yyyy, hh12:mi am'
            )
    end                                      as event_timestamp,
    ae.page_url                              as page_url,
    ae.button_label                          as button_label,
    current_timestamp                        as dw_load_ts
from {{ source('metabase', 'analyticevents') }} ae
left join {{ source('metabase', 'accounts') }} acc
       on lower(acc.email) = lower(ae.account_id)
