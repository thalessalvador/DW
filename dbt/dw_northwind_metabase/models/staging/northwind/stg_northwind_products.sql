{{ config(
    materialized='view',
    tags=['staging', 'northwind']
) }}

-- Catálogo Northwind com categoria, fornecedor e indicadores de estoque.
select
    'NORTHWIND'                                   as source_system,
    p.productid                                   as source_product_id,
    'NORTHWIND_' || p.productid                   as product_nk,
    p.productname                                 as product_name,
    c.categoryname                                as category_name,
    s.companyname                                 as supplier_name,
    p.quantityperunit                             as package_details,
    cast(p.unitprice as numeric(12,4))            as unit_price,
    p.unitsinstock                                as units_in_stock,
    p.unitsonorder                                as units_on_order,
    p.reorderlevel                                as reorder_level,
    p.discontinued = '1'                          as is_discontinued,
    current_timestamp                             as dw_load_ts
from {{ source('northwind', 'product') }} p
left join {{ source('northwind', 'category') }} c
       on p.categoryid = c.categoryid
left join {{ source('northwind', 'supplier') }} s
       on p.supplierid = s.supplierid
