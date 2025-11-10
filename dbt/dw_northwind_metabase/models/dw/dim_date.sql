{{ config(
    materialized='table',
    tags=['dw', 'dimension']
) }}

-- Dimensão de datas gerada via série contínua (apoia análises históricas).
with calendar as (
    select
        day::date as date_day
    from generate_series('1990-01-01'::date, '2035-12-31'::date, interval '1 day') as gs(day)
)
select
    row_number() over (order by date_day)         as date_sk,
    date_day,
    extract(year from date_day)::int              as year,
    extract(quarter from date_day)::int           as quarter,
    extract(month from date_day)::int             as month,
    to_char(date_day, 'TMMonth')                  as month_name,
    extract(day from date_day)::int               as day_of_month,
    to_char(date_day, 'IW')::int                  as iso_week,
    extract(dow from date_day)::int               as day_of_week,
    to_char(date_day, 'Dy')                       as day_name,
    case when extract(isodow from date_day) in (6,7) then true else false end as is_weekend
from calendar
