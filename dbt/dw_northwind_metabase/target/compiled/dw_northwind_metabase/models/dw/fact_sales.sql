

-- Fato de vendas unificada (B2B + B2C) com métricas financeiras padronizadas.
with northwind as (
    select
        'NORTHWIND'                          as source_system,
        od.source_order_id,
        od.order_nk,
        o.customer_nk,
        od.product_nk,
        o.employee_nk,
        o.shipper_nk,
        'CHANNEL_NORTHWIND'                  as channel_nk,
        o.order_date,
        o.shipped_date,
        od.quantity,
        od.unit_price,
        od.discount_pct,
        od.gross_amount,
        od.net_amount,
        od.dw_load_ts
    from "dw_northwind_metabase"."dw_stg"."stg_northwind_order_details" od
    join "dw_northwind_metabase"."dw_stg"."stg_northwind_orders" o
      on od.order_nk = o.order_nk
),
metabase as (
    select
        'METABASE'                           as source_system,
        source_order_id,
        order_nk,
        customer_nk,
        product_nk,
        null::varchar                        as employee_nk,
        null::varchar                        as shipper_nk,
        'CHANNEL_METABASE'                   as channel_nk,
        order_date,
        shipped_date,
        quantity,
        unit_price,
        discount_pct,
        (quantity * unit_price)::numeric(14,4)                         as gross_amount,
        total_amount                                                   as net_amount,
        dw_load_ts
    from "dw_northwind_metabase"."dw_stg"."stg_metabase_orders"
)
select * from northwind
union all
select * from metabase