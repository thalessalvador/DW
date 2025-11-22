

-- Contas Metabase (SaaS/B2C).
with base as (
    select
        p.id,
        p.first_name,
        p.last_name,
        p.email,
        p.plan,
        p.source,
        p.seats,
        p.latitude,
        p.longitude,
        p.country,
        p.trial_converted,
        p.active_subscription,
        p.legacy_plan,
        p.created_at,
        p.trial_ends_at,
        p.canceled_at,
        p.created_at::text    as created_at_txt,
        p.trial_ends_at::text as trial_ends_at_txt,
        p.canceled_at::text   as canceled_at_txt,
        -- PT-BR -> ENG para evitar falha de parse
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
            ' *[-+]\\d{2}:?\\d{2}$','') as created_at_en,
        regexp_replace(
            replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(
                translate(lower(p.trial_ends_at::text), 'çáàâãäéèêëíìîïóòôõöúùûü','caaaaaeeeeiiiioooouuuu'),
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
            ' *[-+]\\d{2}:?\\d{2}$','') as trial_ends_at_en,
        regexp_replace(
            replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(
                translate(lower(p.canceled_at::text), 'çáàâãäéèêëíìîïóòôõöúùûü','caaaaaeeeeiiiioooouuuu'),
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
            ' *[-+]\\d{2}:?\\d{2}$','') as canceled_at_en
    from "dw_northwind_metabase"."public"."accounts" p
)
select
    'METABASE'                                as source_system,
    b.id                                      as source_customer_id,
    'METABASE_ACCOUNT_' || b.id               as customer_nk,
    concat_ws(' ', b.first_name, b.last_name) as customer_name,
    b.email                                   as email,
    b.first_name                              as first_name,
    b.last_name                               as last_name,
    b.plan                                    as plan,
    b.source                                  as source,
    b.source                                  as segment,
    b.seats                                   as seats,
    nullif(trim(b.latitude), '')              as latitude,
    nullif(trim(b.longitude), '')             as longitude,
    nullif(trim(b.country), '')               as country,
    b.trial_converted                         as trial_converted,
    b.active_subscription                     as active_subscription,
    b.legacy_plan                             as legacy_plan,
    -- datas em texto (ISO ou PT-BR) com validação de padrão
    case
        when b.created_at_txt ~ '^\\d{4}-\\d{2}-\\d{2}' then b.created_at::timestamptz
        when b.created_at_txt ~ '^[A-Za-zÀ-ÿ]' and b.created_at_en ~ '^[a-z]{3} \\d{1,2}, \\d{4}, \\d{1,2}:\\d{2} [ap]m$'
            then to_timestamp(b.created_at_en, 'Mon DD, YYYY, HH12:MI AM')::timestamptz
        else null
    end                                     as created_at,
    case
        when b.trial_ends_at_txt ~ '^\\d{4}-\\d{2}-\\d{2}' then b.trial_ends_at::timestamptz
        when b.trial_ends_at_txt ~ '^[A-Za-zÀ-ÿ]' and b.trial_ends_at_en ~ '^[a-z]{3} \\d{1,2}, \\d{4}, \\d{1,2}:\\d{2} [ap]m$'
            then to_timestamp(b.trial_ends_at_en, 'Mon DD, YYYY, HH12:MI AM')::timestamptz
        else null
    end                                     as trial_ends_at,
    case
        when b.canceled_at_txt ~ '^\\d{4}-\\d{2}-\\d{2}' then b.canceled_at::timestamptz
        when b.canceled_at_txt ~ '^[A-Za-zÀ-ÿ]' and b.canceled_at_en ~ '^[a-z]{3} \\d{1,2}, \\d{4}, \\d{1,2}:\\d{2} [ap]m$'
            then to_timestamp(b.canceled_at_en, 'Mon DD, YYYY, HH12:MI AM')::timestamptz
        else null
    end                                     as canceled_at,
    current_timestamp                        as dw_load_ts
from base b