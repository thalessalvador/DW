
  create view "dw_northwind_metabase"."dw_stg"."int_customers__dbt_tmp"
    
    
  as (
    

-- Consolida clientes B2B (Northwind) e B2C/SaaS (Metabase) para snapshots SCD2.
with northwind as (
    select
        source_system,
        customer_nk,
        cast(source_customer_id as varchar)           as source_customer_id,
        customer_name,
        contact_name,
        contact_title,
        null::varchar                                as first_name,
        null::varchar                                as last_name,
        address,
        city,
        region,
        country,
        postal_code,
        null::varchar                                as plan,
        null::varchar                                as segment,
        null::int                                    as seats,
        null::boolean                                as trial_converted,
        null::boolean                                as active_subscription,
        null::boolean                                as legacy_plan,
        current_timestamp                            as created_at,
        null::timestamp                              as trial_ends_at,
        null::timestamp                              as canceled_at,
        dw_load_ts
    from "dw_northwind_metabase"."dw_stg"."stg_northwind_customers"
),
metabase as (
    select
        source_system,
        customer_nk,
        cast(source_customer_id as varchar)           as source_customer_id,
        customer_name,
        null::varchar                                as contact_name,
        null::varchar                                as contact_title,
        first_name,
        last_name,
        null::varchar                                as address,
        null::varchar                                as city,
        null::varchar                                as region,
        country,
        null::varchar                                as postal_code,
        plan,
        segment,
        seats,
        trial_converted,
        active_subscription,
        legacy_plan,
        created_at,
        trial_ends_at,
        canceled_at,
        dw_load_ts
    from "dw_northwind_metabase"."dw_stg"."stg_metabase_accounts"
),
metabase_people as (
    select
        source_system,
        customer_nk,
        cast(source_customer_id as varchar)           as source_customer_id,
        customer_name,
        contact_name,
        contact_title,
        first_name,
        last_name,
        address,
        city,
        region,
        country,
        postal_code,
        plan,
        segment,
        seats,
        trial_converted,
        active_subscription,
        legacy_plan,
        created_at,
        trial_ends_at,
        canceled_at,
        dw_load_ts
    from "dw_northwind_metabase"."dw_stg"."stg_metabase_people"
)
select * from northwind
union all
select * from metabase
union all
select * from metabase_people
union all
select
    'NORTHWIND'                          as source_system,
    'NORTHWIND_ORPHAN_UNKNOWN'           as customer_nk,
    null::varchar                        as source_customer_id,
    'Cliente Desconhecido Northwind'     as customer_name,
    null::varchar                        as contact_name,
    null::varchar                        as contact_title,
    null::varchar                        as first_name,
    null::varchar                        as last_name,
    null::varchar                        as address,
    null::varchar                        as city,
    null::varchar                        as region,
    null::varchar                        as country,
    null::varchar                        as postal_code,
    null::varchar                        as plan,
    null::varchar                        as segment,
    null::int                            as seats,
    null::boolean                        as trial_converted,
    null::boolean                        as active_subscription,
    null::boolean                        as legacy_plan,
    timestamp '1900-01-01'               as created_at,
    null::timestamp                      as trial_ends_at,
    null::timestamp                      as canceled_at,
    timestamp '1900-01-01'               as dw_load_ts
union all
select
    'METABASE'                           as source_system,
    'METABASE_ACCOUNT_ORPHAN_UNKNOWN'    as customer_nk,
    null::varchar                        as source_customer_id,
    'Cliente Desconhecido Metabase'      as customer_name,
    null::varchar                        as contact_name,
    null::varchar                        as contact_title,
    null::varchar                        as first_name,
    null::varchar                        as last_name,
    null::varchar                        as address,
    null::varchar                        as city,
    null::varchar                        as region,
    null::varchar                        as country,
    null::varchar                        as postal_code,
    null::varchar                        as plan,
    null::varchar                        as segment,
    null::int                            as seats,
    null::boolean                        as trial_converted,
    null::boolean                        as active_subscription,
    null::boolean                        as legacy_plan,
    timestamp '1900-01-01'               as created_at,
    null::timestamp                      as trial_ends_at,
    null::timestamp                      as canceled_at,
    timestamp '1900-01-01'               as dw_load_ts
  );