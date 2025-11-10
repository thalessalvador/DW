
  
    

  create  table "dw_northwind_metabase"."dw_dw"."dim_customer__dbt_tmp"
  
  
    as
  
  (
    

-- Dimensão de clientes com controle SCD2 (snapshot) e SK gerado no carregamento.
with latest as (
    select
        *
    from "dw_northwind_metabase"."snapshots"."customers_snapshot"
    where dbt_valid_to is null
)
select
    row_number() over (order by customer_nk)       as customer_sk,
    customer_nk,
    source_system,
    source_customer_id,
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
    dbt_valid_from,
    dbt_valid_to,
    case when dbt_valid_to is null then true else false end as current_flag
from latest
  );
  