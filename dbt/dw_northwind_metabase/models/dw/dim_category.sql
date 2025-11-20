{{ config(
    materialized='table',
    tags=['dw', 'dimension']
) }}

-- Dimensão de categorias (SCD1 simples).
with unioned as (
    select distinct
        category_nk,
        category_name,
        category_description
    from {{ ref('stg_northwind_categories') }}

    union

    select distinct
        category_nk,
        coalesce(category_name, 'UNKNOWN') as category_name,
        null::varchar as category_description
    from {{ ref('stg_metabase_products') }}
)
select
    row_number() over (order by category_nk) as category_sk,
    category_nk,
    category_name,
    category_description
from unioned
