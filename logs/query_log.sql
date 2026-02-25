-- created_at: 2026-02-25T04:35:25.057062696+00:00
-- finished_at: 2026-02-25T04:35:25.413324901+00:00
-- elapsed: 356ms
-- outcome: success
-- dialect: databricks
-- node_id: not available
-- query_id: 01f11203-672d-1118-9cb2-7fe56a97395b
-- desc: execute adapter call
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "db_profile", "target_name": "dev"} */
show databases;
-- created_at: 2026-02-25T04:35:26.712894091+00:00
-- finished_at: 2026-02-25T04:35:27.233971109+00:00
-- elapsed: 521ms
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.stg_rfpj__cnaes
-- query_id: 01f11203-6829-1466-a244-116d77320656
-- desc: get_relation > list_relations call

SELECT
    table_name,
    if(table_type IN ('EXTERNAL', 'MANAGED', 'MANAGED_SHALLOW_CLONE', 'EXTERNAL_SHALLOW_CLONE'), 'table', lower(table_type)) AS table_type,
    lower(data_source_format) AS file_format,
    table_schema,
    table_owner,
    table_catalog,
    if(
    table_type IN (
        'EXTERNAL',
        'MANAGED',
        'MANAGED_SHALLOW_CLONE',
        'EXTERNAL_SHALLOW_CLONE'
    ),
    lower(table_type),
    NULL
    ) AS databricks_table_type
FROM `system`.`information_schema`.`tables`
WHERE table_catalog = 'dev_analytics'
    AND table_schema = 'dbt_arthur_silver_rfpj';
-- created_at: 2026-02-25T04:35:27.241304495+00:00
-- finished_at: 2026-02-25T04:35:28.192626353+00:00
-- elapsed: 951ms
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.stg_rfpj__cnaes
-- query_id: 01f11203-687a-116c-9e6a-ae758dfa9d72
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.explorando_dbt.stg_rfpj__cnaes", "profile_name": "db_profile", "target_name": "dev"} */
create or replace view `dev_analytics`.`dbt_arthur_silver_rfpj`.`stg_rfpj__cnaes`
  
  
  
  as
    

with source as (

    select * from `dev_analytics`.`bronze_rfpj`.`cnaes`

),

renamed as (

    select
        cast(codigo as string) as cod_cnae,
        trim(descricao) as nome_cnae
    from source

)

select * from renamed;
-- created_at: 2026-02-25T04:35:27.893927613+00:00
-- finished_at: 2026-02-25T04:35:28.467958494+00:00
-- elapsed: 574ms
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.stg_rfpj__naturezas
-- query_id: 01f11203-68dd-1569-a6d1-b94f8cef55d2
-- desc: get_relation > list_relations call

SELECT
    table_name,
    if(table_type IN ('EXTERNAL', 'MANAGED', 'MANAGED_SHALLOW_CLONE', 'EXTERNAL_SHALLOW_CLONE'), 'table', lower(table_type)) AS table_type,
    lower(data_source_format) AS file_format,
    table_schema,
    table_owner,
    table_catalog,
    if(
    table_type IN (
        'EXTERNAL',
        'MANAGED',
        'MANAGED_SHALLOW_CLONE',
        'EXTERNAL_SHALLOW_CLONE'
    ),
    lower(table_type),
    NULL
    ) AS databricks_table_type
FROM `system`.`information_schema`.`tables`
WHERE table_catalog = 'dev_analytics'
    AND table_schema = 'dbt_arthur_silver_rfpj';
-- created_at: 2026-02-25T04:35:28.474814779+00:00
-- finished_at: 2026-02-25T04:35:29.295938996+00:00
-- elapsed: 821ms
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.stg_rfpj__naturezas
-- query_id: 01f11203-6936-12fc-b796-d7d973c7df2f
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.explorando_dbt.stg_rfpj__naturezas", "profile_name": "db_profile", "target_name": "dev"} */
create or replace view `dev_analytics`.`dbt_arthur_silver_rfpj`.`stg_rfpj__naturezas`
  
  
  
  as
    

with source as (

    select * from `dev_analytics`.`bronze_rfpj`.`naturezas`

),

renamed as (

    select
        cast(codigo as int) as cod_natureza_juridica,
        trim(descricao) as desc_natureza_juridica
    from source

)

select * from renamed;
-- created_at: 2026-02-25T04:35:29.071785829+00:00
-- finished_at: 2026-02-25T04:35:29.646105334+00:00
-- elapsed: 574ms
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.stg_rfpj__qualificacoes
-- query_id: 01f11203-6991-106d-b046-9a083807af66
-- desc: get_relation > list_relations call

SELECT
    table_name,
    if(table_type IN ('EXTERNAL', 'MANAGED', 'MANAGED_SHALLOW_CLONE', 'EXTERNAL_SHALLOW_CLONE'), 'table', lower(table_type)) AS table_type,
    lower(data_source_format) AS file_format,
    table_schema,
    table_owner,
    table_catalog,
    if(
    table_type IN (
        'EXTERNAL',
        'MANAGED',
        'MANAGED_SHALLOW_CLONE',
        'EXTERNAL_SHALLOW_CLONE'
    ),
    lower(table_type),
    NULL
    ) AS databricks_table_type
FROM `system`.`information_schema`.`tables`
WHERE table_catalog = 'dev_analytics'
    AND table_schema = 'dbt_arthur_silver_rfpj';
-- created_at: 2026-02-25T04:35:29.652765629+00:00
-- finished_at: 2026-02-25T04:35:30.646364339+00:00
-- elapsed: 993ms
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.stg_rfpj__qualificacoes
-- query_id: 01f11203-69e9-1eb9-a325-458bba742cb6
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.explorando_dbt.stg_rfpj__qualificacoes", "profile_name": "db_profile", "target_name": "dev"} */
create or replace view `dev_analytics`.`dbt_arthur_silver_rfpj`.`stg_rfpj__qualificacoes`
  
  
  
  as
    

with source as (

    select * from `dev_analytics`.`bronze_rfpj`.`qualificacoes`

),

renamed as (

    select
        cast(codigo as int) as cod_qualificacao,
        trim(descricao) as desc_qualificacao
    from source

)

select * from renamed;
-- created_at: 2026-02-25T04:35:30.215693468+00:00
-- finished_at: 2026-02-25T04:35:30.758954376+00:00
-- elapsed: 543ms
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.stg_rfpj__municipios
-- query_id: 01f11203-6a3f-1973-8a37-e1badf8b926d
-- desc: get_relation > list_relations call

SELECT
    table_name,
    if(table_type IN ('EXTERNAL', 'MANAGED', 'MANAGED_SHALLOW_CLONE', 'EXTERNAL_SHALLOW_CLONE'), 'table', lower(table_type)) AS table_type,
    lower(data_source_format) AS file_format,
    table_schema,
    table_owner,
    table_catalog,
    if(
    table_type IN (
        'EXTERNAL',
        'MANAGED',
        'MANAGED_SHALLOW_CLONE',
        'EXTERNAL_SHALLOW_CLONE'
    ),
    lower(table_type),
    NULL
    ) AS databricks_table_type
FROM `system`.`information_schema`.`tables`
WHERE table_catalog = 'dev_analytics'
    AND table_schema = 'dbt_arthur_silver_rfpj';
-- created_at: 2026-02-25T04:35:30.764170483+00:00
-- finished_at: 2026-02-25T04:35:31.951677176+00:00
-- elapsed: 1.2s
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.stg_rfpj__municipios
-- query_id: 01f11203-6a93-1c26-9e87-09e53f2b2586
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.explorando_dbt.stg_rfpj__municipios", "profile_name": "db_profile", "target_name": "dev"} */
create or replace view `dev_analytics`.`dbt_arthur_silver_rfpj`.`stg_rfpj__municipios`
  
  
  
  as
    

with source as (

    select * from `dev_analytics`.`bronze_rfpj`.`municipios`

),

renamed as (

    select
        cast(codigo as int) as cod_municipio,
        trim(descricao) as nome_municipio
    from source

)

select * from renamed;
-- created_at: 2026-02-25T04:35:31.335637118+00:00
-- finished_at: 2026-02-25T04:35:31.981208840+00:00
-- elapsed: 645ms
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.stg_rfpj__empresas
-- query_id: 01f11203-6aea-1809-af91-fa45a6a94dd7
-- desc: get_relation > list_relations call

SELECT
    table_name,
    if(table_type IN ('EXTERNAL', 'MANAGED', 'MANAGED_SHALLOW_CLONE', 'EXTERNAL_SHALLOW_CLONE'), 'table', lower(table_type)) AS table_type,
    lower(data_source_format) AS file_format,
    table_schema,
    table_owner,
    table_catalog,
    if(
    table_type IN (
        'EXTERNAL',
        'MANAGED',
        'MANAGED_SHALLOW_CLONE',
        'EXTERNAL_SHALLOW_CLONE'
    ),
    lower(table_type),
    NULL
    ) AS databricks_table_type
FROM `system`.`information_schema`.`tables`
WHERE table_catalog = 'dev_analytics'
    AND table_schema = 'dbt_arthur_silver_rfpj';
-- created_at: 2026-02-25T04:35:32.563458529+00:00
-- finished_at: 2026-02-25T04:35:33.321743003+00:00
-- elapsed: 758ms
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.stg_rfpj__socios
-- query_id: 01f11203-6ba6-14d3-82ce-debf80b75c6f
-- desc: get_relation > list_relations call

SELECT
    table_name,
    if(table_type IN ('EXTERNAL', 'MANAGED', 'MANAGED_SHALLOW_CLONE', 'EXTERNAL_SHALLOW_CLONE'), 'table', lower(table_type)) AS table_type,
    lower(data_source_format) AS file_format,
    table_schema,
    table_owner,
    table_catalog,
    if(
    table_type IN (
        'EXTERNAL',
        'MANAGED',
        'MANAGED_SHALLOW_CLONE',
        'EXTERNAL_SHALLOW_CLONE'
    ),
    lower(table_type),
    NULL
    ) AS databricks_table_type
FROM `system`.`information_schema`.`tables`
WHERE table_catalog = 'dev_analytics'
    AND table_schema = 'dbt_arthur_silver_rfpj';
-- created_at: 2026-02-25T04:35:31.986546134+00:00
-- finished_at: 2026-02-25T04:35:33.472343426+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.stg_rfpj__empresas
-- query_id: 01f11203-6b4e-13d5-87a1-78d5f89ef75b
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.explorando_dbt.stg_rfpj__empresas", "profile_name": "db_profile", "target_name": "dev"} */
create or replace view `dev_analytics`.`dbt_arthur_silver_rfpj`.`stg_rfpj__empresas`
  
  
  
  as
    

with source as (

     


    select * from `dev_analytics`.`bronze_rfpj`.`empresas_0`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`empresas_1`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`empresas_2`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`empresas_3`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`empresas_4`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`empresas_5`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`empresas_6`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`empresas_7`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`empresas_8`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`empresas_9`
    




),

renamed as (

    select
        lpad(cnpj_basico, 8, '0') as cnpj_basico,
        trim(razao_social) as razao_social,
        cast(natureza_juridica as int) as natureza_juridica,
        cast(qualificacao_responsavel as int) as qualificacao_responsavel,
        cast(
            replace(capital_social, ',', '.')
            as double
        ) as capital_social,
        porte_empresa,
        ente_federativo_responsavel

    from source

)

select * from renamed;
-- created_at: 2026-02-25T04:35:33.977208304+00:00
-- finished_at: 2026-02-25T04:35:34.512013157+00:00
-- elapsed: 534ms
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.stg_rfpj__estabelecimentos
-- query_id: 01f11203-6c7d-1d04-8ed6-2a8e040d475d
-- desc: get_relation > list_relations call

SELECT
    table_name,
    if(table_type IN ('EXTERNAL', 'MANAGED', 'MANAGED_SHALLOW_CLONE', 'EXTERNAL_SHALLOW_CLONE'), 'table', lower(table_type)) AS table_type,
    lower(data_source_format) AS file_format,
    table_schema,
    table_owner,
    table_catalog,
    if(
    table_type IN (
        'EXTERNAL',
        'MANAGED',
        'MANAGED_SHALLOW_CLONE',
        'EXTERNAL_SHALLOW_CLONE'
    ),
    lower(table_type),
    NULL
    ) AS databricks_table_type
FROM `system`.`information_schema`.`tables`
WHERE table_catalog = 'dev_analytics'
    AND table_schema = 'dbt_arthur_silver_rfpj';
-- created_at: 2026-02-25T04:35:33.330016816+00:00
-- finished_at: 2026-02-25T04:35:34.650516697+00:00
-- elapsed: 1.3s
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.stg_rfpj__socios
-- query_id: 01f11203-6c1a-1fc1-b659-a19d96d0d883
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.explorando_dbt.stg_rfpj__socios", "profile_name": "db_profile", "target_name": "dev"} */
create or replace view `dev_analytics`.`dbt_arthur_silver_rfpj`.`stg_rfpj__socios`
  
  
  
  as
    

with source as (

    


    select * from `dev_analytics`.`bronze_rfpj`.`socios_0`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`socios_1`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`socios_2`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`socios_3`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`socios_4`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`socios_5`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`socios_6`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`socios_7`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`socios_8`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`socios_9`
    




),

renamed as (

    select
        lpad(cnpj_basico, 8, '0') as cnpj_basico,
        identificador_socio,
        nome_socio,
        qualificacao_socio,
        to_date(data_entrada_sociedade, 'yyyyMMdd') as data_entrada_sociedade,
        faixa_etaria
    from source

)

select * from renamed;
-- created_at: 2026-02-25T04:35:34.520618285+00:00
-- finished_at: 2026-02-25T04:35:35.659478569+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.stg_rfpj__estabelecimentos
-- query_id: 01f11203-6cd0-155a-a3f7-b8bbf3d30636
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.explorando_dbt.stg_rfpj__estabelecimentos", "profile_name": "db_profile", "target_name": "dev"} */
create or replace view `dev_analytics`.`dbt_arthur_silver_rfpj`.`stg_rfpj__estabelecimentos`
  
  
  
  as
    

with source as (

    


    select * from `dev_analytics`.`bronze_rfpj`.`estabelecimentos_0`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`estabelecimentos_1`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`estabelecimentos_2`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`estabelecimentos_3`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`estabelecimentos_4`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`estabelecimentos_5`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`estabelecimentos_6`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`estabelecimentos_7`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`estabelecimentos_8`
     union all 

    select * from `dev_analytics`.`bronze_rfpj`.`estabelecimentos_9`
    




),

renamed as (

    select
        lpad(cnpj_basico, 8, '0') as cnpj_basico,
        lpad(cnpj_ordem, 4, '0') as cnpj_ordem,
        lpad(cnpj_dv, 2, '0') as cnpj_dv,

        concat(cnpj_basico, cnpj_ordem, cnpj_dv) as cnpj_completo,

        identificador_matriz_filial,
        nome_fantasia,
        situacao_cadastral,

        cast( regexp_replace(municipio, '[a-zA-Z]', '0') as int) as municipio,
        uf,
        cnae_fiscal_principal,
        cnae_fiscal_secundaria

    from source

)

select * from renamed;
-- created_at: 2026-02-25T04:35:35.221841748+00:00
-- finished_at: 2026-02-25T04:35:57.525485650+00:00
-- elapsed: 22.3s
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.int_empresas
-- query_id: 01f11203-6d3b-1ad8-a4b6-09286833eec9
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.explorando_dbt.int_empresas", "profile_name": "db_profile", "target_name": "dev"} */
create or replace table `dev_analytics`.`dbt_arthur_silver_rfpj`.`int_empresas`
      
      
    using delta
  
      
      
      
      
      
      
      
      as
      with empresas as (

    select * from `dev_analytics`.`dbt_arthur_silver_rfpj`.`stg_rfpj__empresas`

),

naturezas as (

    select * from `dev_analytics`.`dbt_arthur_silver_rfpj`.`stg_rfpj__naturezas`

)

select
    e.cnpj_basico,
    e.razao_social,
    e.capital_social,
    e.porte_empresa,
    n.desc_natureza_juridica
from empresas e
left join naturezas n
    on e.natureza_juridica = n.cod_natureza_juridica;
-- created_at: 2026-02-25T04:35:57.530688504+00:00
-- finished_at: 2026-02-25T04:35:58.098117184+00:00
-- elapsed: 567ms
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.fct_company_market_share_by_size
-- query_id: 01f11203-7a87-1481-9b1f-11b038fc7a9d
-- desc: get_relation > list_relations call

SELECT
    table_name,
    if(table_type IN ('EXTERNAL', 'MANAGED', 'MANAGED_SHALLOW_CLONE', 'EXTERNAL_SHALLOW_CLONE'), 'table', lower(table_type)) AS table_type,
    lower(data_source_format) AS file_format,
    table_schema,
    table_owner,
    table_catalog,
    if(
    table_type IN (
        'EXTERNAL',
        'MANAGED',
        'MANAGED_SHALLOW_CLONE',
        'EXTERNAL_SHALLOW_CLONE'
    ),
    lower(table_type),
    NULL
    ) AS databricks_table_type
FROM `system`.`information_schema`.`tables`
WHERE table_catalog = 'dev_analytics'
    AND table_schema = 'dbt_arthur_gold_rfpj';
-- created_at: 2026-02-25T04:35:58.699954022+00:00
-- finished_at: 2026-02-25T04:35:59.208267882+00:00
-- elapsed: 508ms
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.fct_capital_by_company_size
-- query_id: 01f11203-7b3a-12b9-ac7b-06d4459e26b4
-- desc: get_relation > list_relations call

SELECT
    table_name,
    if(table_type IN ('EXTERNAL', 'MANAGED', 'MANAGED_SHALLOW_CLONE', 'EXTERNAL_SHALLOW_CLONE'), 'table', lower(table_type)) AS table_type,
    lower(data_source_format) AS file_format,
    table_schema,
    table_owner,
    table_catalog,
    if(
    table_type IN (
        'EXTERNAL',
        'MANAGED',
        'MANAGED_SHALLOW_CLONE',
        'EXTERNAL_SHALLOW_CLONE'
    ),
    lower(table_type),
    NULL
    ) AS databricks_table_type
FROM `system`.`information_schema`.`tables`
WHERE table_catalog = 'dev_analytics'
    AND table_schema = 'dbt_arthur_gold_rfpj';
-- created_at: 2026-02-25T04:35:36.974895184+00:00
-- finished_at: 2026-02-25T04:36:07.003103802+00:00
-- elapsed: 30.0s
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.int_socios
-- query_id: 01f11203-6e47-15f4-97e3-2ee729049f78
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.explorando_dbt.int_socios", "profile_name": "db_profile", "target_name": "dev"} */
create or replace table `dev_analytics`.`dbt_arthur_silver_rfpj`.`int_socios`
      
      
    using delta
  
      
      
      
      
      
      
      
      as
      with socios as (

    select * from `dev_analytics`.`dbt_arthur_silver_rfpj`.`stg_rfpj__socios`

),

qualificacoes as (

    select * from `dev_analytics`.`dbt_arthur_silver_rfpj`.`stg_rfpj__qualificacoes`

)

select
    s.cnpj_basico,
    s.nome_socio,
    s.qualificacao_socio,
    q.desc_qualificacao,
    s.data_entrada_sociedade,
    s.faixa_etaria

from socios s
left join qualificacoes q
    on s.qualificacao_socio = q.cod_qualificacao;
-- created_at: 2026-02-25T04:35:35.670946141+00:00
-- finished_at: 2026-02-25T04:36:35.259385168+00:00
-- elapsed: 59.6s
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.int_estabelecimentos
-- query_id: 01f11203-6d80-1c38-bac5-1c4bb49255ca
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.explorando_dbt.int_estabelecimentos", "profile_name": "db_profile", "target_name": "dev"} */
create or replace table `dev_analytics`.`dbt_arthur_silver_rfpj`.`int_estabelecimentos`
      
      
    using delta
  
      
      
      
      
      
      
      
      as
      with estab as (

    select * from `dev_analytics`.`dbt_arthur_silver_rfpj`.`stg_rfpj__estabelecimentos`

),

municipios as (

    select * from `dev_analytics`.`dbt_arthur_silver_rfpj`.`stg_rfpj__municipios`

),

cnaes as (

    select * from `dev_analytics`.`dbt_arthur_silver_rfpj`.`stg_rfpj__cnaes`

)

select
    e.*,
    m.nome_municipio,
    c.nome_cnae

from estab e
left join municipios m
    on e.municipio = m.cod_municipio
left join cnaes c
    on e.cnae_fiscal_principal = c.cod_cnae;
-- created_at: 2026-02-25T04:35:59.213025476+00:00
-- finished_at: 2026-02-25T04:36:39.293447894+00:00
-- elapsed: 40.1s
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.fct_capital_by_company_size
-- query_id: 01f11203-7b89-1367-b57e-947fc5350d6b
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.explorando_dbt.fct_capital_by_company_size", "profile_name": "db_profile", "target_name": "dev"} */
create or replace table `dev_analytics`.`dbt_arthur_gold_rfpj`.`fct_capital_by_company_size`
      
      
    using delta
  
      
      
      
      
      
      
      
      as
      

with companies as (

    select
        porte_empresa,
        capital_social
    from `dev_analytics`.`dbt_arthur_silver_rfpj`.`int_empresas`

)

select
    porte_empresa as company_size,
    count(*) as total_companies,
    sum(capital_social) as total_capital,
    avg(capital_social) as avg_capital,
    min(capital_social) as min_capital,
    max(capital_social) as max_capital

from companies
group by 1;
-- created_at: 2026-02-25T04:35:58.107011407+00:00
-- finished_at: 2026-02-25T04:36:39.604303157+00:00
-- elapsed: 41.5s
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.fct_company_market_share_by_size
-- query_id: 01f11203-7adf-1a74-8477-9c1586b64e80
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.explorando_dbt.fct_company_market_share_by_size", "profile_name": "db_profile", "target_name": "dev"} */
create or replace table `dev_analytics`.`dbt_arthur_gold_rfpj`.`fct_company_market_share_by_size`
      
      
    using delta
  
      
      
      
      
      
      
      
      as
      

with companies as (

    select
        porte_empresa,
        capital_social
    from `dev_analytics`.`dbt_arthur_silver_rfpj`.`int_empresas`

),

aggregated as (

    select
        porte_empresa,
        count(*) as total_empresas_por_porte,
        sum(capital_social) as total_agregado_por_porte_empresas
    from companies
    group by 1

),

totals as (

    select
        sum(total_empresas_por_porte) as total_empresas,
        sum(total_agregado_por_porte_empresas) as total_agregado_capital_empresas
    from aggregated

)

select
    a.porte_empresa,
    a.total_empresas_por_porte,
    a.total_agregado_por_porte_empresas,

    -- % share of companies
    a.total_empresas_por_porte / t.total_empresas as percentual_participacao_empresa,

    -- % share of capital
    a.total_agregado_por_porte_empresas / t.total_agregado_capital_empresas as percentual_participal_capital_empresa

from aggregated a
cross join totals t;
-- created_at: 2026-02-25T04:35:35.670971771+00:00
-- finished_at: 2026-02-25T04:36:39.731699134+00:00
-- elapsed: 1m 4s
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.int_matrizes
-- query_id: 01f11203-6d80-1da3-8c1f-17abe72d15e1
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.explorando_dbt.int_matrizes", "profile_name": "db_profile", "target_name": "dev"} */
create or replace table `dev_analytics`.`dbt_arthur_silver_rfpj`.`int_matrizes`
      
      
    using delta
  
      
      
      
      
      
      
      
      as
      with empresas as (
    select * from `dev_analytics`.`dbt_arthur_silver_rfpj`.`stg_rfpj__empresas`
),

matriz as (

    select *
    from `dev_analytics`.`dbt_arthur_silver_rfpj`.`stg_rfpj__estabelecimentos`
    where identificador_matriz_filial = '1'

)

select
    e.cnpj_basico,
    concat(m.cnpj_basico, m.cnpj_ordem, m.cnpj_dv) as company_id,
    e.razao_social,
    m.nome_fantasia,
    m.municipio,
    m.uf,
    e.capital_social

from empresas e
left join matriz m
    on e.cnpj_basico = m.cnpj_basico;
-- created_at: 2026-02-25T04:36:07.012998604+00:00
-- finished_at: 2026-02-25T04:36:41.698405274+00:00
-- elapsed: 34.7s
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.fct_company_partner_role_distribution
-- query_id: 01f11203-802e-1646-b3a2-dcf271e1bb01
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.explorando_dbt.fct_company_partner_role_distribution", "profile_name": "db_profile", "target_name": "dev"} */
create or replace table `dev_analytics`.`dbt_arthur_gold_rfpj`.`fct_company_partner_role_distribution`
      
      
    using delta
  
      
      
      
      
      
      
      
      as
      

with partners as (

    select
        cnpj_basico,
        desc_qualificacao
    from `dev_analytics`.`dbt_arthur_silver_rfpj`.`int_socios`

)

select
    cnpj_basico,
    desc_qualificacao,
    count(*) as total_socios
from partners
group by 1,2;
-- created_at: 2026-02-25T04:36:08.202177132+00:00
-- finished_at: 2026-02-25T04:36:44.556333891+00:00
-- elapsed: 36.4s
-- outcome: success
-- dialect: databricks
-- node_id: model.explorando_dbt.fct_company_partner_age_distribution
-- query_id: 01f11203-80e3-1fb8-905a-663ffd665e5c
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.explorando_dbt.fct_company_partner_age_distribution", "profile_name": "db_profile", "target_name": "dev"} */
create or replace table `dev_analytics`.`dbt_arthur_gold_rfpj`.`fct_company_partner_age_distribution`
      
      
    using delta
  
      
      
      
      
      
      
      
      as
      

with partners as (

    select
        cnpj_basico,
        faixa_etaria
    from `dev_analytics`.`dbt_arthur_silver_rfpj`.`int_socios`

),

aggregated as (

    select
        cnpj_basico,
        faixa_etaria,
        count(*) as toral_socios
    from partners
    group by 1,2

)

select * from aggregated;
