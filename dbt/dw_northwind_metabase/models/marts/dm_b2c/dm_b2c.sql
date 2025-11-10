{{ config(
    materialized='view',
    tags=['mart', 'b2c']
) }}

-- Data mart focado nas vendas Metabase (B2C/SaaS).
select *
from {{ ref('dm_sales') }}
where source_system = 'METABASE'
