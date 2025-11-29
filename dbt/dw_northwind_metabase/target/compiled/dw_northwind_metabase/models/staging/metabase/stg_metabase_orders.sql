
-- Orders from Metabase Sample (B2C/SaaS).
with account_name_map as (
    select lower(concat_ws(' ', first_name, last_name)) as full_name_key,
           min(id) as account_id
    from "dw_northwind_metabase"."public"."accounts"
    where first_name is not null and last_name is not null
    group by 1
),
people_name_map as (
    select lower(name) as full_name_key,
           min(id) as person_id
    from "dw_northwind_metabase"."public"."people"
    where name is not null
    group by 1
),
product_map as (
    select lower(title) as title_key,
           min(id) as product_id,
           min('METABASE_' || id) as product_nk,
           min('METABASE_SUP_' || lower(replace(coalesce(vendor,'UNKNOWN'),' ','_'))) as supplier_nk,
           min('METABASE_CAT_' || lower(replace(coalesce(category,'UNKNOWN'),' ','_'))) as category_nk
    from "dw_northwind_metabase"."public"."products"
    group by 1
)
select
    'METABASE' as source_system,
    o.id       as source_order_id,
    'METABASE_' || o.id as order_nk,
    case
        when people_map.person_id is not null then 'METABASE_PERSON_' || people_map.person_id::varchar
        when acc_map.account_id   is not null then 'METABASE_ACCOUNT_' || acc_map.account_id::varchar
        else 'METABASE_ORPHAN_' || upper(trim(o.user_id))
    end as customer_nk,
    coalesce(prod_map.product_nk, 'METABASE_' || upper(trim(o.product_id))) as product_nk,
    coalesce(prod_map.supplier_nk, 'METABASE_SUP_UNKNOWN')                  as supplier_nk,
    coalesce(prod_map.category_nk, 'METABASE_CAT_UNKNOWN')                  as category_nk,
    null::varchar as employee_nk,
    null::varchar as order_state,
    -- Date parsing: ISO only (orders created_at vem em ISO na base padrão).
    -- Date parsing: Handles localized format (e.g., "julho 28, 2025, 11:18 AM")
    -- Converts Portuguese months to English and casts to timestamp using the correct format mask.
    case
        when o.created_at ~ '^\d{4}-\d{2}-\d{2}' then o.created_at::timestamptz
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
                replace(lower(o.created_at), 
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
    end as order_date,
    cast(null as timestamp) as shipped_date,
    cast(o.quantity as numeric(12,4)) as quantity,
    case when o.quantity is not null and o.quantity <> 0 then (o.subtotal / o.quantity) else null end::numeric(12,4) as unit_price,
    cast(o.discount____ as numeric(12,4)) as discount_pct,
    cast(o.total as numeric(14,4)) as total_amount,
    current_timestamp as dw_load_ts
from "dw_northwind_metabase"."public"."orders" o
left join account_name_map acc_map   on lower(o.user_id) = acc_map.full_name_key
left join people_name_map people_map on lower(o.user_id) = people_map.full_name_key
left join product_map prod_map       on lower(o.product_id) = prod_map.title_key