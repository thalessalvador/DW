{{ config(
    materialized='view',
    tags=['staging', 'metabase']
) }}

-- Faturas SaaS (Metabase) com valores normalizados e vínculo ao cliente.
select
    'METABASE'                               as source_system,
    i.id                                     as source_invoice_id,
    'METABASE_' || i.id                      as invoice_nk,
    -- Associação com cliente/conta via chave natural.
    case
        when acc.id is not null then 'METABASE_' || acc.id::varchar
        else null
    end                                      as customer_nk,
    i.account_id                             as source_account_id,
    i.plan                                   as plan_name,
    cast(i.payment as numeric(12,4))         as payment_amount,
    i.expected_invoice                       as expected_invoice_flag,
    -- Tratamento de datas inválidas na fonte Metabase (Ex: '0000-00-00'). Se não retornar uma data válida, atribui NULL.
    case
        when i.date_received ~ '^\d{4}-\d{2}-\d{2}'
            then i.date_received::timestamp
        else null
    end                                      as date_received,
    current_timestamp                        as dw_load_ts
from {{ source('metabase', 'invoices') }} i
left join {{ source('metabase', 'accounts') }} acc
       on lower(acc.email) = lower(i.account_id)
