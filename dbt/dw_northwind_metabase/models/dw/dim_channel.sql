{{ config(
    materialized='table',
    tags=['dw', 'dimension']
) }}

-- Dimensão de canais/fonte (B2B x B2C/SaaS).
select
    row_number() over (order by channel_nk) as channel_sk,
    channel_nk,
    channel_name,
    business_model
from (
    values
        ('CHANNEL_NORTHWIND', 'Northwind ERP', 'B2B'),
        ('CHANNEL_METABASE', 'Metabase Sample', 'B2C/SaaS')
) as channels(channel_nk, channel_name, business_model)
