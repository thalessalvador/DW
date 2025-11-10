{{ config(
    materialized='view',
    tags=['mart', 'b2b']
) }}

-- Data mart focado no fluxo Northwind (B2B).
select *
from {{ ref('dm_sales') }}
where source_system = 'NORTHWIND'
