{{ config(materialized='view', tags=['staging','metabase']) }}
-- Orders from Metabase Sample (B2C/SaaS).
with base as (
    select
        o.*,
        trim(o.created_at::text) as created_at_txt,
        trim(o.user_id::text)    as user_id_txt,
        trim(o.product_id::text) as product_id_txt
    from {{ source('metabase','orders') }} o
),
account_name_map as (
    select lower(concat_ws(' ', first_name, last_name)) as full_name_key,
           min(id) as account_id
    from {{ source('metabase','accounts') }}
    where first_name is not null and last_name is not null
    group by 1
),
people_name_map as (
    select lower(name) as full_name_key,
           min(id) as person_id
    from {{ source('metabase','people') }}
    where name is not null
    group by 1
),
product_map as (
    select lower(title) as title_key,
           min(id) as product_id,
           min('METABASE_' || id) as product_nk,
           min('METABASE_SUP_' || lower(replace(coalesce(vendor,'UNKNOWN'),' ','_'))) as supplier_nk,
           min('METABASE_CAT_' || lower(replace(coalesce(category,'UNKNOWN'),' ','_'))) as category_nk
    from {{ source('metabase','products') }}
    group by 1
)
select
    'METABASE' as source_system,
    b.id       as source_order_id,
    'METABASE_' || b.id as order_nk,
    case
        when people_map.person_id is not null then 'METABASE_PERSON_' || people_map.person_id::varchar
        when acc_map.account_id   is not null then 'METABASE_ACCOUNT_' || acc_map.account_id::varchar
        else 'METABASE_ORPHAN_' || upper(trim(b.user_id_txt))
    end as customer_nk,
    coalesce(prod_map.product_nk, 'METABASE_' || upper(trim(b.product_id_txt))) as product_nk,
    coalesce(prod_map.supplier_nk, 'METABASE_SUP_UNKNOWN')                  as supplier_nk,
    coalesce(prod_map.category_nk, 'METABASE_CAT_UNKNOWN')                  as category_nk,
    null::varchar as employee_nk, -- nao ha vendedor associado na base B2C
    null::varchar as order_state,
    -- Date parsing: ISO ou mês em PT-BR (trimming aplicado).
    case
        when b.created_at_txt ~ '^\\d{4}-\\d{2}-\\d{2}' then b.created_at_txt::timestamptz
        when b.created_at_txt ~ '^[A-Za-z??-K]' then to_timestamp(
            regexp_replace(
                replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(
                    translate(lower(b.created_at_txt), '??o???u?????G???Ok????????????g???O','caaaaaeeeeiiiioooouuuu'),
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
                ' *[-+]\\d{2}:?\\d{2}$',''),
            'Mon DD, YYYY, HH12:MI AM'
        )::timestamptz
        else null
    end as order_date,
    cast(null as timestamp) as shipped_date,
    cast(b.quantity as numeric(12,4)) as quantity,
    case when b.quantity is not null and b.quantity <> 0 then (b.subtotal / b.quantity) else null end::numeric(12,4) as unit_price,
    cast(b.discount____ as numeric(12,4)) as discount_pct,
    cast(b.total as numeric(14,4)) as total_amount,
    current_timestamp as dw_load_ts
from base b
left join account_name_map acc_map   on lower(b.user_id_txt) = acc_map.full_name_key
left join people_name_map people_map on lower(b.user_id_txt) = people_map.full_name_key
left join product_map prod_map       on lower(b.product_id_txt) = prod_map.title_key
