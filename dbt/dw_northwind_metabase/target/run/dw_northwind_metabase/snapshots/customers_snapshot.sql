
      
  
    

  create  table "dw_northwind_metabase"."snapshots"."customers_snapshot"
  
  
    as
  
  (
    
    

    select *,
        md5(coalesce(cast(customer_nk as varchar ), '')
         || '|' || coalesce(cast(now()::timestamp without time zone as varchar ), '')
        ) as dbt_scd_id,
        now()::timestamp without time zone as dbt_updated_at,
        now()::timestamp without time zone as dbt_valid_from,
        
  
  coalesce(nullif(now()::timestamp without time zone, now()::timestamp without time zone), null)
  as dbt_valid_to
from (
        



select
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
    dw_load_ts
from "dw_northwind_metabase"."dw_stg"."int_customers"

    ) sbq



  );
  
  