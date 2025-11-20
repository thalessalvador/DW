# Data Warehouse Northwind + Metabase (dbt + PostgreSQL)

Projeto acadêmico que consolida as bases **Northwind** (ERP B2B) e **Metabase Sample** (SaaS B2C) em um Data Warehouse no PostgreSQL 12, modelado e orquestrado via **dbt**.

## Arquitetura lógica

- **RAW (origem):** `northwind.public`, `sample_metabase_pg.public` (expostos via FDW no banco `dw_northwind_metabase`).
- **STG (`dw_stg`):** views de normalização (`stg_northwind_*`, `stg_metabase_*`) com NKs padronizadas e conversão de tipos.
- **Intermediária (`dw_stg`):** `int_customers`, `int_products`, `int_suppliers` consolidam fontes antes dos snapshots.
- **Snapshots (`snapshots`):** `customers_snapshot`, `products_snapshot`, `suppliers_snapshot`, `employees_snapshot` (SCD2).
- **DW core (`dw_dw`):** dimensões SCD2 (`dim_customer`, `dim_product`, `dim_supplier`, `dim_employee`) e dimensões padrão (`dim_category`, `dim_date`, `dim_geography`, `dim_channel`) com fatos (`fact_sales`, `fact_invoices`, `fact_feedback`, `fact_reviews`, `fact_analytic_events`).
- **Data marts (`dw_dm_*`):** `dm_sales`, `dm_b2b`, `dm_b2c`, `dm_saas`, `dm_product_analytics`.

## Pré-requisitos

- **Python 3.13+** (uso de `venv` recomendado).
- **dbt-postgres 1.9.1** (instalado no `.venv`).
- **PostgreSQL 12** local: host `localhost`, porta `5433`, usuário `postgres`, senha `123456`, banco `dw_northwind_metabase`.
- Tabelas de origem acessíveis via FDW no schema `public` do DW.

### Configurando o PostgreSQL FDW
Execute no banco `dw_northwind_metabase` (ajuste host/porta/credenciais se necessário):
```sql
CREATE EXTENSION IF NOT EXISTS postgres_fdw;

-- Servidor Northwind
CREATE SERVER IF NOT EXISTS northwind_srv
  FOREIGN DATA WRAPPER postgres_fdw
  OPTIONS (host 'localhost', port '5433', dbname 'northwind');
CREATE USER MAPPING IF NOT EXISTS FOR postgres
  SERVER northwind_srv
  OPTIONS (user 'postgres', password '123456');
IMPORT FOREIGN SCHEMA public LIMIT TO (
  customer, salesorder, orderdetail,
  product, category, supplier, employee
) FROM SERVER northwind_srv INTO public;

-- Servidor Metabase Sample
CREATE SERVER IF NOT EXISTS metabase_srv
  FOREIGN DATA WRAPPER postgres_fdw
  OPTIONS (host 'localhost', port '5433', dbname 'sample_metabase_pg');
CREATE USER MAPPING IF NOT EXISTS FOR postgres
  SERVER metabase_srv
  OPTIONS (user 'postgres', password '123456');
IMPORT FOREIGN SCHEMA public LIMIT TO (
  accounts, orders, products, people,
  invoices, feedback, reviews, analyticevents
) FROM SERVER metabase_srv INTO public;
```
> Pode importar todo o schema se preferir; o essencial é que as tabelas usadas em `stg_*` estejam visíveis em `public`.

## Primeira configuração
- Criação e ativação do ambiente virtual:
  - **Windows (PowerShell):**
    ```powershell
    python -m venv .venv
    .\.venv\Scripts\activate
    ```
  - **Linux/macOS (bash/zsh):**
    ```bash
    python -m venv .venv
    source .venv/bin/activate
    ```
- Instalar dependências e apontar para o projeto dbt:
  ```powershell
  .\.venv\Scripts\pip install -U pip dbt-postgres
  cd ".\dbt\dw_northwind_metabase"
  $env:DBT_PROFILES_DIR = (Get-Location)
  ```

## Execução recomendada
Sempre que alterar o fluxo, rode na ordem:
```powershell
dbt run --select tag:staging                           # staging (dw_stg)
dbt run --select intermediate                          # int_customers/int_products/int_suppliers
dbt snapshot --select products_snapshot suppliers_snapshot employees_snapshot customers_snapshot # aplica SCD2 em produtos/fornecedores/colaboradores/clientes
dbt run --select dim_customer dim_product dim_supplier dim_employee dim_category dim_date dim_geography dim_channel fact_sales fact_invoices fact_feedback fact_reviews fact_analytic_events  # dimensões/fatos (dw_dw)
dbt run --select dm_sales dm_b2b dm_b2c dm_saas dm_product_analytics  # marts (dw_dm_*)
dbt test --select tag:staging intermediate `
                   dim_customer dim_product dim_supplier dim_employee dim_category dim_date dim_geography dim_channel `
                   fact_sales fact_invoices fact_feedback fact_reviews fact_analytic_events stg_metabase_people
```
> O dbt cria schemas com prefixo `dw_` (ex.: `dw_stg`, `dw_dw`, `dw_dm_sales`). Use `dbt ls --select <pattern>` para checar seletores se necessário.

## Estrutura de pastas (resumo)
```
dbt/dw_northwind_metabase/
├── models/
│   ├── staging/
│   ├── intermediate/
│   ├── dw/
│   └── marts/
├── snapshots/
├── macros/
├── dbt_project.yml
└── profiles.yml
```

## Verificação / diagnóstico
- `dbt debug` — checa credenciais e conexão.
- `dbt run --select <modelo>` — recompila modelo específico.
- `dbt test` — executa testes (not null, unique, relationships).
- `dbt docs generate` / `dbt docs serve` — documentação navegável (opcional).

## Controle histórico (SCD Type 2)
Foi utilizado o padrão de snapshots do dbt (`*_snapshot.sql`, estratégia `check`) para historificar clientes, produtos, fornecedores e colaboradores. A cada `dbt snapshot`, o dbt encerra o registro anterior (`dbt_valid_to`) e cria nova linha com `dbt_valid_from` quando algum atributo monitorado muda. As dimensões (`dim_customer`, `dim_product`, `dim_supplier`, `dim_employee`) filtram `dbt_valid_to IS NULL` para estado corrente e expõem `dbt_valid_from`/`dbt_valid_to`/`current_flag` para consultas históricas.

**Resultado prático**:
- Qualquer mudança relevante fica registrada como nova versão, suportando análises “as of”.
- Métricas podem ser reconstituídas conforme o contexto temporal (ex.: vendas antes/depois de mudança de plano ou fornecedor).
- Relatórios históricos juntam a fato ao intervalo de validade na dimensão.

Estratégia baseada no guia: https://medium.com/@wajahatullah.k/using-dbt-snapshots-to-implement-scd-type-2-a-step-by-step-guide-7f2c521cc927

### Exemplos de consultas (corrente vs histórico)
- **Estado corrente (usa current_flag)**
  ```sql
  -- Vendas atuais B2C com produto/fornecedor/cliente correntes
  select
    fs.order_nk,
    dc.customer_name,
    dp.product_name,
    ds.supplier_name,
    fs.order_date,
    fs.quantity,
    fs.net_amount
  from dw_dm_b2c.dm_b2c fs
  left join dw_dw.dim_customer dc on fs.customer_nk = dc.customer_nk and dc.current_flag
  left join dw_dw.dim_product  dp on fs.product_nk  = dp.product_nk  and dp.current_flag
  left join dw_dw.dim_supplier ds on fs.supplier_nk = ds.supplier_nk and ds.current_flag;
  ```
- **Histórico “as of” (usa validade)**
  ```sql
  -- Vendas B2C em 2023 com atributos válidos na data do pedido
  select
    fs.order_nk,
    dc.customer_name,
    dp.product_name,
    ds.supplier_name,
    fs.order_date,
    fs.quantity,
    fs.net_amount
  from dw_dw.fact_sales fs
  left join dw_dw.dim_customer dc
    on fs.customer_nk = dc.customer_nk
   and fs.order_date >= dc.dbt_valid_from
   and fs.order_date  < coalesce(dc.dbt_valid_to, '9999-12-31')
  left join dw_dw.dim_product dp
    on fs.product_nk = dp.product_nk
   and fs.order_date >= dp.dbt_valid_from
   and fs.order_date  < coalesce(dp.dbt_valid_to, '9999-12-31')
  left join dw_dw.dim_supplier ds
    on fs.supplier_nk = ds.supplier_nk
   and fs.order_date >= ds.dbt_valid_from
   and fs.order_date  < coalesce(ds.dbt_valid_to, '9999-12-31')
  where fs.source_system = 'METABASE'
    and fs.order_date >= date '2023-01-01'
    and fs.order_date <  date '2024-01-01';
  ```

---
Sinta-se à vontade para ajustar `profiles.yml` (host, usuário, senha) conforme o ambiente. Qualquer mudança adicional em fontes ou métricas deve seguir a trilha de execução acima para manter o DW sincronizado.
