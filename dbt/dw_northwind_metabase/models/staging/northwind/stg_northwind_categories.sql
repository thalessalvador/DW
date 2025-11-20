{{ config(
    materialized='view',
    tags=['staging', 'northwind']
) }}

-- Categorias Northwind com NK padronizada.
select
    'NORTHWIND'                               as source_system,
    c.categoryid                              as source_category_id,
    'NORTHWIND_CAT_' || c.categoryid          as category_nk,
    c.categoryname                            as category_name,
    c.description                             as category_description,
    current_timestamp                         as dw_load_ts
from {{ source('northwind', 'category') }} c
