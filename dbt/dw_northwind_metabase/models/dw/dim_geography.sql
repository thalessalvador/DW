{{ config(
    materialized='table',
    tags=['dw', 'dimension']
) }}

-- Dimensão de geografia consolidando localidades presentes nas diferentes fontes.
with unioned as (
    select distinct
        upper(coalesce(country, 'N/A')) as country,
        upper(coalesce(region, 'N/A'))  as region,
        upper(coalesce(city, 'N/A'))    as city
    from {{ ref('stg_northwind_customers') }}

    union

    select distinct
        upper(coalesce(country, 'N/A')) as country,
        'N/A'                           as region,
        'N/A'                           as city
    from {{ ref('stg_metabase_accounts') }}

    union

    select distinct
        upper(coalesce(country, 'N/A')) as country,
        upper(coalesce(region, 'N/A'))  as region,
        upper(coalesce(city, 'N/A'))    as city
    from {{ ref('stg_northwind_employees') }}

    union

    select distinct
        upper(coalesce(ship_country, 'N/A')) as country,
        upper(coalesce(ship_region, 'N/A'))  as region,
        upper(coalesce(ship_city, 'N/A'))    as city
    from {{ ref('stg_northwind_orders') }}
)
select
    row_number() over (order by country, region, city) as geography_sk,
    country,
    region,
    city
from unioned
