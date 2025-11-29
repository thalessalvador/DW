{{ config(
    materialized="view",
    tags=["mart", "product_analytics"]
) }}

-- Mart 360 de produto com joins SCD2 usando o intervalo completo.
with events as (
    select
        'ANALYTIC_EVENT'   as record_type,
        fa.event_nk        as record_nk,
        fa.customer_nk,
        null::varchar      as product_nk,
        fa.event_name      as metric_name,
        1::numeric         as metric_value,
        fa.event_timestamp as metric_timestamp,
        fa.page_url        as context_info,
        dc.customer_name,
        dc.segment,
        null::varchar      as product_name
    from {{ ref('fact_analytic_events') }} fa
    left join {{ ref('dim_customer') }} dc
           on fa.dim_customer_sk = dc.customer_sk
),
reviews as (
    select
        'REVIEW'           as record_type,
        fr.review_nk       as record_nk,
        null::varchar      as customer_nk,
        fr.product_nk,
        'rating_score'     as metric_name,
        fr.rating_score    as metric_value,
        fr.created_at      as metric_timestamp,
        fr.review_text     as context_info,
        null::varchar      as customer_name,
        null::varchar      as segment,
        dp.product_name
    from {{ ref('fact_reviews') }} fr
    left join {{ ref('dim_product') }} dp
           on fr.dim_product_sk = dp.product_sk
),
feedback as (
    select
        'FEEDBACK'         as record_type,
        ff.feedback_nk     as record_nk,
        ff.customer_nk,
        null::varchar      as product_nk,
        'rating_score'     as metric_name,
        ff.rating_score    as metric_value,
        ff.date_received   as metric_timestamp,
        ff.feedback_text   as context_info,
        dc.customer_name,
        dc.segment,
        null::varchar      as product_name
    from {{ ref('fact_feedback') }} ff
    left join {{ ref('dim_customer') }} dc
           on ff.dim_customer_sk = dc.customer_sk
)
select * from events
union all
select * from reviews
union all
select * from feedback
