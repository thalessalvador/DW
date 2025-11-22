{{ config(
    materialized='view',
    tags=['staging','metabase']
) }}

-- Registros da tabela people (usados pelos pedidos B2C que não mapeiam para accounts).
with base as (
    select
        p.id,
        p.name,
        p.address,
        p.city,
        p.state,
        p.zip,
        p.source,
        p.created_at,
        trim(p.created_at::text) as created_at_txt,
        -- normaliza mês PT-BR para abreviação em EN e remove sufixo de fuso (ex.: -03)
        regexp_replace(
            replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(
                translate(lower(p.created_at::text), 'çáàâãäéèêëíìîïóòôõöúùûü','caaaaaeeeeiiiioooouuuu'),
                'janeiro','jan'),
                'fevereiro','feb'),
                'marco','mar'),
                'abril','apr'),
                'maio','may'),
                'junho','jun'),
                'julho','jul'),
                'agosto','aug'),
                'setembro','sep'),
                'outubro','oct'),
                'novembro','nov'),
                'dezembro','dec'),
            ' *[-+]\\d{2}:?\\d{2}$','') as created_at_en
    from {{ source('metabase', 'people') }} p
)
select
    'METABASE'                               as source_system,
    b.id                                     as source_customer_id,
    'METABASE_PERSON_' || b.id               as customer_nk,
    b.name                                   as customer_name,
    null::varchar                            as contact_name,
    null::varchar                            as contact_title,
    split_part(b.name, ' ', 1)               as first_name,
    nullif(split_part(b.name, ' ', 2), '')   as last_name,
    b.address                                as address,
    b.city                                   as city,
    b.state                                  as region,
    null::varchar                            as country,
    b.zip::varchar                           as postal_code,
    null::varchar                            as plan,
    b.source                                 as segment,
    null::int                                as seats,
    null::boolean                            as trial_converted,
    null::boolean                            as active_subscription,
    null::boolean                            as legacy_plan,
    -- created_at em texto PT-BR ou ISO
    case
        when b.created_at_txt ~ '^\d{4}-\d{2}-\d{2}' then b.created_at::timestamptz
        when b.created_at_txt ~ '^[A-Za-zÀ-ÿ]' and b.created_at_en ~ '^[a-z]{3} \d{1,2}, \d{4}, \d{1,2}:\d{2} [ap]m$'
            then to_timestamp(b.created_at_en, 'Mon DD, YYYY, HH12:MI AM')::timestamptz
        else null
    end                                           as created_at,
    null::timestamp                          as trial_ends_at,
    null::timestamp                          as canceled_at,
    current_timestamp                        as dw_load_ts
from base b
