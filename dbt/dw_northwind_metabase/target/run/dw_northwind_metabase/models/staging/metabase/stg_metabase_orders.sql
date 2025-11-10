
  create view "dw_northwind_metabase"."dw_stg"."stg_metabase_orders__dbt_tmp"
    
    
  as (
    

-- Pedidos/eventos comerciais da base Metabase Sample.
select
    'METABASE'                               as source_system,
    o.id                                     as source_order_id,
    'METABASE_' || o.id                      as order_nk,
    'METABASE_' || o.user_id                 as customer_nk,
    'METABASE_' || o.product_id              as product_nk,
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
  );