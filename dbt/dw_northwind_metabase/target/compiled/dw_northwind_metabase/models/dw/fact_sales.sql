

with sales_unioned as (
    -- Fato de vendas unificada (B2B + B2C) com métricas financeiras padronizadas.
    with northwind as (
        select
            'NORTHWIND'                          as source_system,
            od.source_order_id,
            od.order_nk,
            o.customer_nk,
            od.supplier_nk,
            od.category_nk,
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
            supplier_nk,
            category_nk,
            product_nk,
            employee_nk,
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
),

final as (
    select
        -- Surrogate Keys (SKs)
        coalesce(dc.customer_sk, -1)          as dim_customer_sk,
        coalesce(dp.product_sk, -1)           as dim_product_sk,
        coalesce(ds.supplier_sk, -1)          as dim_supplier_sk,
        coalesce(dcat.category_sk, -1)        as dim_category_sk,
        coalesce(de.employee_sk, -1)          as dim_employee_sk,
        coalesce(dch.channel_sk, -1)          as dim_channel_sk,
        -- Degenerate Dimensions (Order and Source System)
        s.order_nk,
        s.source_system,
        s.source_order_id,
        -- Fact Metrics
        s.order_date,
        s.shipped_date,
        s.quantity,
        s.unit_price,
        s.discount_pct,
        s.gross_amount,
        s.net_amount,
        s.dw_load_ts

    from sales_unioned s

    -- Junção “as of” com dimensões SCD2 (mantêm dbt_valid_from/dbt_valid_to)
    left join "dw_northwind_metabase"."dw_dw"."dim_customer" dc
        on s.customer_nk = dc.customer_nk
       and s.order_date >= coalesce(dc.dbt_valid_from, timestamp '1900-01-01')
       and s.order_date <  coalesce(dc.dbt_valid_to,   timestamp '9999-12-31')

    left join "dw_northwind_metabase"."dw_dw"."dim_product" dp
        on s.product_nk = dp.product_nk
       and s.order_date >= coalesce(dp.dbt_valid_from, timestamp '1900-01-01')
       and s.order_date <  coalesce(dp.dbt_valid_to,   timestamp '9999-12-31')

    left join "dw_northwind_metabase"."dw_dw"."dim_supplier" ds
        on s.supplier_nk = ds.supplier_nk
       and s.order_date >= coalesce(ds.dbt_valid_from, timestamp '1900-01-01')
       and s.order_date <  coalesce(ds.dbt_valid_to,   timestamp '9999-12-31')

    left join "dw_northwind_metabase"."dw_dw"."dim_category" dcat
        on dp.category_nk = dcat.category_nk

    left join "dw_northwind_metabase"."dw_dw"."dim_employee" de
        on s.employee_nk = de.employee_nk
       and s.order_date >= coalesce(de.dbt_valid_from, timestamp '1900-01-01')
       and s.order_date <  coalesce(de.dbt_valid_to,   timestamp '9999-12-31')

    -- Junção com dim_channel (não é um snapshot)
    left join "dw_northwind_metabase"."dw_dw"."dim_channel" dch on s.channel_nk = dch.channel_nk
)

select * from final