
      update "dw_northwind_metabase"."snapshots"."customers_snapshot"
    set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to
    from "customers_snapshot__dbt_tmp213657119567" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_scd_id::text = "dw_northwind_metabase"."snapshots"."customers_snapshot".dbt_scd_id::text
      and DBT_INTERNAL_SOURCE.dbt_change_type::text in ('update'::text, 'delete'::text)
      
        and "dw_northwind_metabase"."snapshots"."customers_snapshot".dbt_valid_to is null;
      


    insert into "dw_northwind_metabase"."snapshots"."customers_snapshot" ("customer_nk", "source_system", "source_customer_id", "customer_name", "contact_name", "contact_title", "first_name", "last_name", "address", "city", "region", "country", "postal_code", "plan", "segment", "seats", "trial_converted", "active_subscription", "legacy_plan", "created_at", "trial_ends_at", "canceled_at", "dw_load_ts", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id")
    select DBT_INTERNAL_SOURCE."customer_nk",DBT_INTERNAL_SOURCE."source_system",DBT_INTERNAL_SOURCE."source_customer_id",DBT_INTERNAL_SOURCE."customer_name",DBT_INTERNAL_SOURCE."contact_name",DBT_INTERNAL_SOURCE."contact_title",DBT_INTERNAL_SOURCE."first_name",DBT_INTERNAL_SOURCE."last_name",DBT_INTERNAL_SOURCE."address",DBT_INTERNAL_SOURCE."city",DBT_INTERNAL_SOURCE."region",DBT_INTERNAL_SOURCE."country",DBT_INTERNAL_SOURCE."postal_code",DBT_INTERNAL_SOURCE."plan",DBT_INTERNAL_SOURCE."segment",DBT_INTERNAL_SOURCE."seats",DBT_INTERNAL_SOURCE."trial_converted",DBT_INTERNAL_SOURCE."active_subscription",DBT_INTERNAL_SOURCE."legacy_plan",DBT_INTERNAL_SOURCE."created_at",DBT_INTERNAL_SOURCE."trial_ends_at",DBT_INTERNAL_SOURCE."canceled_at",DBT_INTERNAL_SOURCE."dw_load_ts",DBT_INTERNAL_SOURCE."dbt_updated_at",DBT_INTERNAL_SOURCE."dbt_valid_from",DBT_INTERNAL_SOURCE."dbt_valid_to",DBT_INTERNAL_SOURCE."dbt_scd_id"
    from "customers_snapshot__dbt_tmp213657119567" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_change_type::text = 'insert'::text;

  