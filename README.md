# Data Warehouse Northwind + Metabase (dbt + PostgreSQL)

Projeto acadêmico que consolida as bases **Northwind** (ERP B2B) e **Metabase Sample** (SaaS B2C) em um Data Warehouse no PostgreSQL 12, modelado e orquestrado via **dbt**.

## Arquitetura lógica

- **RAW (schemas de origem):** `northwind.public`, `sample_metabase_pg.public` (expostos via FDW no banco `dw_northwind_metabase`).
- **STG (`dw_stg`):** views de normalização (`stg_northwind_*`, `stg_metabase_*`) com chaves naturais padronizadas e conversão de tipos.
- **Intermediária (`dw_stg`):** `int_customers` consolida clientes B2B/B2C e alimenta o snapshot SCD2.
- **Snapshots (`snapshots`):** `customers_snapshot` rastreia histórico de atributos de cliente.
- **DW core (`dw_dw`):** dimensões (`dim_customer`, `dim_product`, `dim_employee`, `dim_date`, `dim_geography`, `dim_channel`) e fatos (`fact_sales`, `fact_invoices`, `fact_feedback`, `fact_reviews`, `fact_analytic_events`).
- **Data marts (`dw_dm_*`):** `dm_sales`, `dm_b2b`, `dm_b2c`, `dm_saas`, `dm_product_analytics`.

## Pré-requisitos

- **Python 3.13+** (uso de `venv` recomendado).
- **dbt-postgres 1.9.1** (instalado no `.venv`).
- **PostgreSQL 12** local:
  - host: `endereço do servidor`
  - port: `porta`
  - usuário: `usuario`
  - senha: `senha`
  - banco DW: `dw_northwind_metabase`
- Tabelas Northwind e Metabase disponíveis via FDW no schema `public` do DW (veja a seção abaixo).

### Configurando o PostgreSQL FDW

Execute o script abaixo dentro do banco `dw_northwind_metabase` (ajuste host/porta/credenciais conforme necessário). Ele cria os servidores FDW para as duas bases e importa apenas as tabelas utilizadas.

```sql
CREATE EXTENSION IF NOT EXISTS postgres_fdw;

-- Servidor Northwind
CREATE SERVER IF NOT EXISTS northwind_srv
  FOREIGN DATA WRAPPER postgres_fdw
  OPTIONS (host 'localhost', port '5433', dbname 'northwind');

CREATE USER MAPPING IF NOT EXISTS FOR postgres
  SERVER northwind_srv
  OPTIONS (user 'postgres', password '123456');

IMPORT FOREIGN SCHEMA public
  LIMIT TO (
    customer, salesorder, orderdetail,
    product, category, supplier, employee
  )
  FROM SERVER northwind_srv INTO public;

-- Servidor Metabase Sample
CREATE SERVER IF NOT EXISTS metabase_srv
  FOREIGN DATA WRAPPER postgres_fdw
  OPTIONS (host 'localhost', port '5433', dbname 'sample_metabase_pg');

CREATE USER MAPPING IF NOT EXISTS FOR postgres
  SERVER metabase_srv
  OPTIONS (user 'postgres', password '123456');

IMPORT FOREIGN SCHEMA public
  LIMIT TO (
    accounts, orders, products, people,
    invoices, feedback, reviews, analyticevents
  )
  FROM SERVER metabase_srv INTO public;
```

> Se preferir, importe o schema inteiro e mantenha apenas as tabelas relevantes via views. O importante é que as tabelas referenciadas nos modelos `stg_*` estejam visíveis em `public`.

## Primeira configuração

1. Criar e ativar o ambiente virtual:
   ```powershell
   python -m venv .venv
   .\.venv\Scripts\activate
   ```
2. Instalar dependências:
   ```powershell
   .\.venv\Scripts\python -m pip install -U pip
   .\.venv\Scripts\pip install dbt-postgres
   ```
3. Navegar até o projeto dbt:
   ```powershell
   cd ".\dbt\dw_northwind_metabase"
   $env:DBT_PROFILES_DIR = (Get-Location)
   ```

## Execução recomendada

Sempre que alterar qualquer camada (staging → marts), siga a sequência:

```powershell
dbt run --select stg_*                      # Atualiza todas as views de staging (dw_stg)
dbt run --select intermediate              # Atualiza int_customers e intermediários
dbt snapshot --select customers_snapshot   # Aplica SCD2 em clientes
dbt run --select dim_* fact_*              # Recria dimensões/fatos (dw_dw)
dbt run --select dm_sales dm_b2b dm_b2c dm_saas dm_product_analytics  # Recria os marts (dw_dm_*)
dbt test --select stg_metabase_people int_customers fact_sales fact_invoices fact_feedback fact_reviews fact_analytic_events
```

> Observação: por padrão, o dbt cria schemas com prefixo `dw_` (ex.: `dw_stg`, `dw_dw`, `dw_dm_sales`). 

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

- `dbt debug` — verifica credenciais e conexão com Postgres.
- `dbt run --select <modelo>` — recompila modelos específicos (útil para testes pontuais).
- `dbt test` — executa todos os testes definidos (not null, unique, relationships).
- `dbt docs generate` - (opcional) gera a documentação do projeto.
- `dbt docs serve` - (opcional) mostra a URL com a documentação do projeto.


## Notas importantes

- As chaves naturais seguem o padrão `NORTHWIND_<id>` ou `METABASE_<id>`, com variações (`METABASE_PERSON_<id>`, `METABASE_ORPHAN_<texto>`) para cobrir pedidos sem vínculo direto a `accounts`.
- Antes de rodar os marts (`dm_*`), garanta que os fatos/dimensões foram recriados com os dados mais recentes.

---

Sinta-se à vontade para ajustar `profiles.yml` (host, usuário, senha) conforme o seu ambiente. Qualquer mudança adicional em fontes ou métricas deve seguir a trilha de execução acima para manter o DW sincronizado.
