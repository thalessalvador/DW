

-- Dimensão SCD2 de clientes: mantém todas as versões do snapshot.
with source as (
    -- Seleciona todos os dados da tabela de snapshot de clientes
    select * from "dw_northwind_metabase"."snapshots"."customers_snapshot"
),
first_seen as (
    -- Identifica a primeira vez que cada cliente (customer_nk) apareceu no sistema.
    -- Agrupa por chave natural e encontra a menor data de validade (min).
    select
        customer_nk,
        min(dbt_valid_from) as first_valid_from
    from source
    group by customer_nk
)
select
    -- Gera uma chave substituta (SK) sequencial para cada versão do cliente.
    -- row_number(): numera as linhas ordenadas pela chave natural e data de validade.
    -- coalesce(): garante que se a data for nula (o que não deve ocorrer), usa 1900-01-01.
    row_number() over (order by s.customer_nk, coalesce(s.dbt_valid_from, timestamp '1900-01-01')) as customer_sk,
    s.customer_nk,
    s.source_system,
    s.source_customer_id,
    s.customer_name,
    s.contact_name,
    s.contact_title,
    s.first_name,
    s.last_name,
    s.address,
    s.city,
    s.region,
    s.country,
    s.postal_code,
    s.plan,
    s.segment,
    s.seats,
    s.trial_converted,
    s.active_subscription,
    s.legacy_plan,
    s.created_at,
    s.trial_ends_at,
    s.canceled_at,
    -- Lógica de "Backdating" (Retroação de Data):
    -- Se esta for a primeira versão do cliente (data igual à primeira data vista)
    -- E a data for anterior à data de corte da carga inicial (data_hora_carga_inicial),
    -- forçamos a data de início para '1900-01-01'.
    -- Isso garante que vendas antigas (ex: 1998) consigam se conectar a este registro,
    -- mas preserva a data real de entrada para novos clientes no futuro.
    case
        when s.dbt_valid_from = f.first_valid_from
             and s.dbt_valid_from <= cast('2025-11-23 00:00:00' as timestamp)
        then timestamp '1900-01-01'
        else s.dbt_valid_from
    end as dbt_valid_from,
    s.dbt_valid_to,
    -- Flag para indicar se é o registro mais atual (se data fim for nula).
    case when s.dbt_valid_to is null then true else false end as current_flag
from source s
-- Faz o join com a CTE first_seen para ter acesso à data da primeira aparição
join first_seen f on s.customer_nk = f.customer_nk