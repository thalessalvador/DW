{{ config(
    materialized="table",
    tags=["dw", "dimension"]
) }}

-- Dimensão SCD2 de fornecedores: mantém todas as versões do snapshot.
with source as (
    -- Seleciona todos os dados da tabela de snapshot de fornecedores
    select * from {{ ref('suppliers_snapshot') }}
),
first_seen as (
    -- Identifica a primeira vez que cada fornecedor apareceu.
    select
        supplier_nk,
        min(dbt_valid_from) as first_valid_from
    from source
    group by supplier_nk
)
select
    -- Gera a chave substituta (SK)
    row_number() over (order by s.supplier_nk, coalesce(s.dbt_valid_from, timestamp '1900-01-01')) as supplier_sk,
    s.supplier_nk,
    s.source_system,
    s.source_supplier_id,
    s.supplier_name,
    s.contact_name,
    s.contact_title,
    s.city,
    s.region,
    s.country,
    s.phone,
    -- Lógica de "Backdating": define a data inicial como 1900-01-01 para a primeira versão,
    -- mas APENAS se a data for anterior ao corte da carga inicial.
    case
        when s.dbt_valid_from = f.first_valid_from
             and s.dbt_valid_from <= cast('{{ var("data_hora_carga_inicial") }}' as timestamp)
        then timestamp '1900-01-01'
        else s.dbt_valid_from
    end as dbt_valid_from,
    s.dbt_valid_to,
    -- Flag de registro atual
    case when s.dbt_valid_to is null then true else false end as current_flag
from source s
join first_seen f on s.supplier_nk = f.supplier_nk
