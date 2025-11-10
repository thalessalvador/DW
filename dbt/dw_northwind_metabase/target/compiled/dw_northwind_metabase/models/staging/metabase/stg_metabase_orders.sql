

with account_name_map as (
    select
        lower(concat_ws(' ', first_name, last_name)) as full_name_key,
        min(id)                                      as account_id
    from "dw_northwind_metabase"."public"."accounts"
    where first_name is not null and last_name is not null
    group by 1
),
people_name_map as (
    select
        lower(name) as full_name_key,
        min(id)     as person_id
    from "dw_northwind_metabase"."public"."people"
    where name is not null
    group by 1
),
product_map as (
    select
        lower(title) as title_key,
        min(id)      as product_id
    from "dw_northwind_metabase"."public"."products"
    group by 1
)
-- Pedidos/eventos comerciais da base Metabase Sample.
select
    'METABASE'                               as source_system,
    o.id                                     as source_order_id,
    'METABASE_' || o.id                      as order_nk,
    case
        when acc_map.account_id is not null then 'METABASE_' || acc_map.account_id::varchar
        when people_map.person_id is not null then 'METABASE_PERSON_' || people_map.person_id::varchar
        else 'METABASE_ORPHAN_' || upper(trim(o.user_id))
    end                                       as customer_nk,
    case
        when prod_map.product_id is not null then 'METABASE_' || prod_map.product_id::varchar
        else 'METABASE_' || upper(trim(o.product_id))
    end                                       as product_nk,
    null::varchar                            as order_state,
    case
        when o.created_at ~ '^\d{4}-\d{2}-\d{2}'
            then o.created_at::timestamp
        else null
    end                                     as order_date,
    cast(null as timestamp)                  as shipped_date,
    cast(o.quantity as numeric(12,4))        as quantity,
    (
        case
            when o.quantity is not null and o.quantity <> 0
                then (o.subtotal / o.quantity)
            else null
        end
    )::numeric(12,4)                         as unit_price,
    cast(o.discount____ as numeric(12,4))    as discount_pct,
    cast(o.total as numeric(14,4))           as total_amount,
    current_timestamp                        as dw_load_ts
from "dw_northwind_metabase"."public"."orders" o
left join account_name_map acc_map
       on lower(o.user_id) = acc_map.full_name_key
left join people_name_map people_map
       on acc_map.account_id is null
      and lower(o.user_id) = people_map.full_name_key
left join product_map prod_map
       on lower(o.product_id) = prod_map.title_key