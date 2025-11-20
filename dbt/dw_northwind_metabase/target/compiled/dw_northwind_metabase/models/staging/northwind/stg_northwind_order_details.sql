

-- Itens de pedido Northwind com métricas preparadas para a fato de vendas.
select
    'NORTHWIND'                                      as source_system,
    od.orderid                                       as source_order_id,
    'NORTHWIND_' || od.orderid                       as order_nk,
    'NORTHWIND_' || od.productid                     as product_nk,
    'NORTHWIND_SUP_' || p.supplierid                 as supplier_nk,
    'NORTHWIND_CAT_' || p.categoryid                 as category_nk,
    cast(od.qty as numeric(12,4))                    as quantity,
    cast(od.unitprice as numeric(12,4))              as unit_price,
    cast(od.discount as numeric(5,4))                as discount_pct,
    (od.unitprice * od.qty)::numeric(14,4)           as gross_amount,
    (od.unitprice * od.qty * (1 - od.discount))::numeric(14,4) as net_amount,
    current_timestamp                                as dw_load_ts
from "dw_northwind_metabase"."public"."orderdetail" od
join "dw_northwind_metabase"."public"."product" p
  on od.productid = p.productid