{{ config(
    materialized="table",
    tags=["dw", "dimension"]
) }}

-- Dimensão SCD2 de produtos: mantém todas as versões do snapshot.
with source as (
    -- Seleciona todos os dados da tabela de snapshot de produtos
    select * from {{ ref('products_snapshot') }}
),
first_seen as (
    -- Identifica a primeira vez que cada produto (product_nk) apareceu no sistema.
    -- Agrupa por chave natural e encontra a menor data de validade (min).
    select
        product_nk,
        min(dbt_valid_from) as first_valid_from
    from source
    group by product_nk
)
select
    -- Gera uma chave substituta (SK) sequencial para cada versão do produto.
    row_number() over (order by s.product_nk, coalesce(s.dbt_valid_from, timestamp '1900-01-01')) as product_sk,
    s.product_nk,
    s.source_system,
    s.source_product_id,
    s.supplier_nk,
    s.category_nk,
    s.product_name,
    s.category_name,
    s.supplier_name,
    s.package_details,
    s.unit_price,
    s.units_in_stock,
    s.units_on_order,
    s.reorder_level,
    s.rating_score,
    s.product_created_at,
    s.is_discontinued,
    -- Lógica de "Backdating" (Retroação de Data):
    -- Se esta for a primeira versão do produto E for anterior ao corte,
    -- forçamos a data de início para '1900-01-01'.
    -- Isso permite vincular pedidos antigos a este produto.
    case
        when s.dbt_valid_from = f.first_valid_from
             and s.dbt_valid_from <= cast('{{ var("data_hora_carga_inicial") }}' as timestamp)
        then timestamp '1900-01-01'
        else s.dbt_valid_from
    end as dbt_valid_from,
    s.dbt_valid_to,
    -- Flag para indicar se é o registro mais atual.
    case when s.dbt_valid_to is null then true else false end as current_flag
from source s
-- Faz o join com a CTE first_seen para comparar as datas
join first_seen f on s.product_nk = f.product_nk
