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
Foi utilizado o padrão de snapshots do dbt (`*_snapshot.sql`, estratégia `check`) para historificar clientes, produtos, fornecedores e colaboradores. A cada `dbt snapshot`, o dbt compara o hash das colunas monitoradas (definidas em `check_cols`) com a versão anterior. Se houver mudança, encerra o registro anterior (`dbt_valid_to`) e cria nova linha com `dbt_valid_from`. As dimensões (`dim_customer`, `dim_product`, `dim_supplier`, `dim_employee`) filtram `dbt_valid_to IS NULL` para estado corrente e expõem `dbt_valid_from`/`dbt_valid_to`/`current_flag` para consultas históricas.

**Resultado prático**:
- Mudanças nas colunas monitoradas geram nova versão, suportando análises “as of”.
- Métricas podem ser reconstituídas conforme o contexto temporal.
- Relatórios históricos juntam a fato ao intervalo de validade na dimensão.

Estratégia baseada no guia: https://docs.getdbt.com/docs/build/snapshots#check-strategy

### Colunas Monitoradas (Check Strategy)
Abaixo estão as colunas configuradas (`check_cols`) para detecção de mudanças em cada snapshot:

| Entidade | Colunas Monitoradas |
| :--- | :--- |
| **Customers** | `customer_name`, `contact_name`, `first_name`, `last_name`, `address`, `city`, `region`, `country`, `postal_code`, `plan`, `segment`, `seats`, `active_subscription`, `canceled_at` |
| **Products** | `product_name`, `supplier_name`, `unit_price`, `rating_score` |
| **Suppliers** | `supplier_name`, `contact_name`, `city`, `region`, `country` |
| **Employees** | `first_name`, `last_name`, `job_title`, `city`, `region`, `country`, `postal_code`, `manager_empid` |

### Tratamento de Carga Inicial (Backdating)
Para garantir que fatos históricos (ex: vendas de 1998) possam ser vinculados corretamente às dimensões SCD2, foi implementada uma lógica de "Backdating" nas dimensões (`dim_customer`, `dim_product`, etc.).

- **Lógica**: Se um registro for a **primeira versão** conhecida E sua data de entrada for anterior à `data_hora_carga_inicial` (definida em `dbt_project.yml`), sua data de início (`dbt_valid_from`) é forçada para `1900-01-01`.
- **Objetivo**: Evitar que dados antigos fiquem órfãos (sem dimensão correspondente) na carga inicial, enquanto preserva a data real de entrada para novos registros criados no futuro (pós-carga).

Configuração em `dbt_project.yml`:
```yaml
vars:
  data_hora_carga_inicial: '2025-11-23 00:00:00' (EXEMPLO)
```

### Exemplos de consultas (corrente vs histórico)

**Importante:** A tabela de Fatos (`fact_sales`) já realiza o join correto com as dimensões considerando a data do fato (`order_date`).
- O join **NÃO** deve ser feito com a tabela de snapshot (`snapshots.*`).
- O join deve ser feito com a dimensão (`dw_dw.dim_*`), que já possui a regra de backdating aplicada.

Exemplo de como a `fact_sales` resolve a chave substituta (SK) correta:
```sql
-- Exemplo conceitual do join na fact_sales
left join {{ ref('dim_customer') }} dc
    on s.customer_nk = dc.customer_nk
    and s.order_date >= coalesce(dc.dbt_valid_from, timestamp '1900-01-01')
    and s.order_date <  coalesce(dc.dbt_valid_to,   timestamp '9999-12-31')
```
Graças ao backdating para `1900-01-01`, vendas antigas (ex: 1998) encontram seu registro de cliente correspondente na dimensão, mesmo que o snapshot tenha sido criado apenas hoje.

---
Sinta-se à vontade para ajustar `profiles.yml` (host, usuário, senha) conforme o ambiente. Qualquer mudança adicional em fontes ou métricas deve seguir a trilha de execução acima para manter o DW sincronizado.


```sql
-- Um exemplo de como ver o SCD2 em Ação

-- 1) Inserções iniciais (v1) – base sample_metabase_pg
-- Pessoas v1
insert into public.people (id, name, email, city, state, source, created_at) values
  (9001, 'Alice Ramos',  'alice.ramos@example.com',  'São Paulo', 'SP', 'web', current_timestamp),
  (9002, 'Bruno Nogueira','bruno.nogueira@example.com','Campinas','SP','web', current_timestamp);

-- Produtos v1
insert into public.products (id, title, category, vendor, price, rating, created_at) values
  (9001, 'Fone Bluetooth Conforto', 'Áudio',     'AudioMax Brasil', 299.00, 4.7, current_timestamp),
  (9002, 'Relógio Esportivo Ativo', 'Wearables', 'TechNova Brasil', 199.00, 4.5, current_timestamp);

-- Compra antes da mudança (cliente 9001, produto 9001)
insert into public.orders (id, user_id, product_id, subtotal, tax, total, discount____, created_at, quantity) values
  (20001, 'Alice Ramos', 'Fone Bluetooth Conforto', 299.00, 29.90, 328.90, 0.00, current_timestamp, 1);


--2) Rodar o dbt (refletir v1)
--No projeto dbt (dbt/dw_northwind_metabase), com venv ativo e --DBT_PROFILES_DIR setado:

dbt run --select tag:staging
dbt run --select intermediate
dbt snapshot --select products_snapshot suppliers_snapshot employees_snapshot customers_snapshot
dbt run --select dim_customer dim_product dim_supplier dim_employee dim_category dim_date dim_geography dim_channel fact_sales fact_invoices fact_feedback fact_reviews fact_analytic_events
dbt run --select dm_sales dm_b2b dm_b2c dm_saas dm_product_analytics


--3) Updates + nova compra (v2) – base sample_metabase_pg
Agora altere atributos e insira a nova compra.

-- Cliente muda de cidade
update public.people set city = 'Santos' where id = 9001;

-- Produto muda preço
update public.products set price = 279.00 where id = 9001;

-- Nova compra após as mudanças
insert into public.orders (id, user_id, product_id, subtotal, tax, total, discount____, created_at, quantity) values
  (20002, 'Alice Ramos', 'Fone Bluetooth Conforto', 279.00, 27.90, 306.90, 0.00, current_timestamp, 1);


--4) Rodar o dbt novamente (refletir v2)
Repita o passo 2


--5) Northwind – Inserções iniciais (v1)
Use antes do primeiro dbt run/snapshot.

-- Clientes
insert into public.customer (custid, companyname, contactname, contacttitle, address, city, country, phone) values
  (9001, 'Comercial Aurora',        'Marina Souza',  'Sócia',   'Rua das Acácias, 100',  'São Paulo',      'Brazil', '+55 11 3333-0001'),
  (9002, 'Distribuidora Horizonte', 'João Prado',    'Diretor', 'Av. do Progresso, 250', 'Belo Horizonte', 'Brazil', '+55 31 4444-0002');

-- Fornecedores
insert into public.supplier (supplierid, companyname, contactname, contacttitle, address, city, country, phone) values
  (9001, 'Sabores do Cerrado', 'Lucas Martins', 'Proprietário', 'Av. Central, 10',  'Goiânia',      'Brazil', '+55 62 5555-0001'),
  (9002, 'Delícias da Serra',  'Ana Ribeiro',   'Proprietária', 'Rua da Serra, 50', 'Juiz de Fora', 'Brazil', '+55 32 5555-0002');

-- Funcionários (datas relativas)
insert into public.employee (empid, lastname, firstname, title, city, country, hiredate, birthdate) values
  (9001, 'Mendes',  'Paula',  'Vendedora', 'Curitiba', 'Brazil', current_date, date '1990-01-01'),
  (9002, 'Almeida', 'Carlos', 'Vendedor',  'Recife',   'Brazil', current_date, date '1991-02-02');

-- Produtos
insert into public.product (productid, productname, supplierid, categoryid, quantityperunit, unitprice,
                            unitsinstock, unitsonorder, reorderlevel, discontinued) values
  (9001, 'Kit Café Especial', 9001, 1, '12 pacotes 500g',     25.00, 20, 0, 5, '0'),
  (9002, 'Chá Mate com Ervas',9002, 1, '24 caixas 20 sachês', 18.50, 15, 0, 5, '0');

-- Venda v1 (custid é varchar)
insert into public.salesorder (orderid, custid, empid, orderdate, requireddate, shippeddate,
                               shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
values
  (20001, '9001', 9001, current_timestamp, current_timestamp, current_timestamp,
   1, 25.00, 'Entrega Aurora', 'Rua das Acácias, 100', 'São Paulo', null, '01000-000', 'Brazil');

insert into public.orderdetail (orderid, productid, unitprice, qty, discount) values
  (20001, 9001, 25.00, 1, 0.00);

---6) Rodar o dbt (refletir v1)
--No projeto dbt/dw_northwind_metabase:
Repita o passo 2

---7) Northwind – Updates + nova venda (v2)

-- Cliente muda de nome
update public.customer
   set companyname = 'Comercial Aurora (Nova Marca)'
 where custid = 9001;

-- Fornecedor muda de nome
update public.supplier
   set companyname = 'Sabores do Cerrado Ltda.'
 where supplierid = 9001;

-- Funcionário promovido
update public.employee
   set title = 'Gerente de Vendas'
 where empid = 9001;

-- Produto muda preço e fornecedor
update public.product
   set unitprice = 27.90, supplierid = 9002
 where productid = 9001;

-- Nova venda após as mudanças
insert into public.salesorder (orderid, custid, empid, orderdate, requireddate, shippeddate,
                               shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
values
  (20002, '9001', 9001, current_timestamp, current_timestamp, current_timestamp,
   1, 27.90, 'Entrega Aurora', 'Rua das Acácias, 100', 'São Paulo', null, '01000-000', 'Brazil');

insert into public.orderdetail (orderid, productid, unitprice, qty, discount) values
  (20002, 9001, 27.90, 1, 0.00);

--8) Rode a pipeine
Repita o passo 2

--9)Observe os resultados nas fact_* em joins com as dim_* e também nos dm_*
```