with base as (

    select distinct
        cnpj_basico,
        cnae_fiscal_principal,
        nome_cnae
    from {{ ref('int_estabelecimentos') }}
    where situacao_cadastral = '02'  -- apenas ativos
      and cnae_fiscal_principal is not null

)

select
    cnae_fiscal_principal as cnae,
    nome_cnae,
    count(distinct cnpj_basico) as total_empresas

from base
group by 1,2
order by total_empresas desc