with estabelecimentos as (

    select *
    from {{ ref('int_estabelecimentos') }}

),

empresas as (

    select *
    from {{ ref('int_empresas') }}

),

empresas_ativas as (

    select
        e.cnpj_basico,
        e.razao_social,
        e.desc_natureza_juridica,
        e.porte_empresa,
        e.capital_social,

        max(case when est.situacao_cadastral = '02' then 1 else 0 end) as flag_ativa

    from empresas e
    left join estabelecimentos est
        on e.cnpj_basico = est.cnpj_basico

    group by
        e.cnpj_basico,
        e.razao_social,
        e.desc_natureza_juridica,
        e.porte_empresa,
        e.capital_social
)

select
    cnpj_basico,
    razao_social,
    desc_natureza_juridica,
    porte_empresa,
    capital_social
from empresas_ativas
where flag_ativa = 1