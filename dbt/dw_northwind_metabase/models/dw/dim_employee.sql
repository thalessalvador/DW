{{ config(
    materialized="table",
    tags=["dw", "dimension"]
) }}

-- Dimens?o SCD2 de colaboradores: todas as vers?es do snapshot employees_snapshot.
select
    row_number() over (order by employee_nk, coalesce(dbt_valid_from, timestamp '1900-01-01')) as employee_sk,
    employee_nk,
    source_system,
    source_employee_id,
    concat_ws(' ', first_name, last_name) as employee_name,
    first_name,
    last_name,
    job_title,
    courtesy_title,
    birth_date,
    hire_date,
    city,
    region,
    country,
    postal_code,
    phone,
    phone_extension,
    manager_empid,
    dbt_valid_from,
    dbt_valid_to,
    case when dbt_valid_to is null then true else false end as current_flag
from (
    with source as (
        -- Seleciona todos os dados da tabela de snapshot de colaboradores
        select * from {{ ref('employees_snapshot') }}
    ),
    first_seen as (
        -- Identifica a primeira vez que cada colaborador apareceu.
        select
            employee_nk,
            min(dbt_valid_from) as first_valid_from
        from source
        group by employee_nk
    )
    select
        s.employee_nk,
        s.source_system,
        s.source_employee_id::varchar,
        s.first_name,
        s.last_name,
        s.job_title,
        s.courtesy_title,
        s.birth_date,
        s.hire_date,
        s.city,
        s.region,
        s.country,
        s.postal_code,
        s.phone,
        s.phone_extension,
        s.manager_empid::varchar,
        -- Lógica de "Backdating": define a data inicial como 1900-01-01 para a primeira versão,
        -- mas APENAS se a data for anterior ao corte da carga inicial.
        case
            when s.dbt_valid_from = f.first_valid_from
                 and s.dbt_valid_from <= cast('{{ var("data_hora_carga_inicial") }}' as timestamp)
            then timestamp '1900-01-01'
            else s.dbt_valid_from
        end as dbt_valid_from,
        s.dbt_valid_to
    from source s
    join first_seen f on s.employee_nk = f.employee_nk
    union all
    select
        'NORTHWIND_EMP_UNKNOWN' as employee_nk,
        'NORTHWIND'             as source_system,
        null::varchar           as source_employee_id,
        null::varchar           as first_name,
        null::varchar           as last_name,
        null::varchar           as job_title,
        null::varchar           as courtesy_title,
        null::date              as birth_date,
        null::date              as hire_date,
        null::varchar           as city,
        null::varchar           as region,
        null::varchar           as country,
        null::varchar           as postal_code,
        null::varchar           as phone,
        null::varchar           as phone_extension,
        null::varchar           as manager_empid,
        timestamp '1900-01-01'  as dbt_valid_from,
        null::timestamp         as dbt_valid_to
    union all
    select
        'METABASE_EMP_UNKNOWN'  as employee_nk,
        'METABASE'              as source_system,
        null::varchar           as source_employee_id,
        null::varchar           as first_name,
        null::varchar           as last_name,
        null::varchar           as job_title,
        null::varchar           as courtesy_title,
        null::date              as birth_date,
        null::date              as hire_date,
        null::varchar           as city,
        null::varchar           as region,
        null::varchar           as country,
        null::varchar           as postal_code,
        null::varchar           as phone,
        null::varchar           as phone_extension,
        null::varchar           as manager_empid,
        timestamp '1900-01-01'  as dbt_valid_from,
        null::timestamp         as dbt_valid_to
) base
