

-- Normaliza os pedidos (cabeçalho) da Northwind gerando NKs padronizadas.
select
    'NORTHWIND'                                 as source_system,
    o.orderid                                   as source_order_id,
    'NORTHWIND_' || o.orderid                   as order_nk,
    'NORTHWIND_' || o.custid                    as customer_nk,
    case
        when o.empid is not null then 'NORTHWIND_' || o.empid
        else 'NORTHWIND_EMP_UNKNOWN'
    end                                         as employee_nk,
    'NORTHWIND_' || o.shipperid                 as shipper_nk,
    cast(o.orderdate as date)                   as order_date,
    cast(o.requireddate as date)                as required_date,
    cast(o.shippeddate as date)                 as shipped_date,
    cast(o.freight as numeric(12,2))            as freight_amount,
    upper(coalesce(o.shipcountry, 'N/A'))       as ship_country,
    upper(coalesce(o.shipregion, 'N/A'))        as ship_region,
    o.shipcity                                  as ship_city,
    current_timestamp                           as dw_load_ts
from "dw_northwind_metabase"."public"."salesorder" o