with estab as (

    select * from {{ ref('stg_rfpj__estabelecimentos') }}

),

municipios as (

    select * from {{ ref('stg_rfpj__municipios') }}

),

cnaes as (

    select * from {{ ref('stg_rfpj__cnaes') }}

)

select
    e.*,
    m.nome_municipio,
    c.nome_cnae

from estab e
left join municipios m
    on e.municipio = m.cod_municipio
left join cnaes c
    on e.cnae_fiscal_principal = c.cod_cnae