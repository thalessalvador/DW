{{ config(
    materialized='view',
    tags=['staging', 'metabase']
) }}

-- Feedbacks recebidos via canais de suporte Metabase.
select
    'METABASE'                               as source_system,
    f.id                                     as source_feedback_id,
    'METABASE_FB_' || f.id                   as feedback_nk,
    -- Associação com cliente/conta via chave natural.
    case
        when acc.id is not null then 'METABASE_' || acc.id::varchar
        else null
    end                                      as customer_nk,
    f.account_id                             as source_account_id,
    f.email                                  as contact_email,
    cast(f.rating as numeric(5,2))           as rating_score,
    f.rating_mapped                          as rating_label,
    -- Tratamento de datas inválidas na fonte Metabase (Ex: '0000-00-00'). Se não retornar uma data válida, atribui NULL.
    case
        when f.date_received ~ '^\d{4}-\d{2}-\d{2}'
            then f.date_received::timestamp
        else null
    end                                      as date_received,
    f.body                                   as feedback_text,
    current_timestamp                        as dw_load_ts
from {{ source('metabase', 'feedback') }} f
left join {{ source('metabase', 'accounts') }} acc
       on lower(acc.email) = lower(f.account_id)
