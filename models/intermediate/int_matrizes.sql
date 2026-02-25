with empresas as (
    select * from {{ ref('stg_rfpj__empresas') }}
),

matriz as (

    select *
    from {{ ref('stg_rfpj__estabelecimentos') }}
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
    on e.cnpj_basico = m.cnpj_basico