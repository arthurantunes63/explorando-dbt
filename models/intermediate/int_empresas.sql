with empresas as (

    select * from {{ ref('stg_rfpj__empresas') }}

),

naturezas as (

    select * from {{ ref('stg_rfpj__naturezas') }}

)

select
    e.cnpj_basico,
    e.razao_social,
    e.capital_social,
    e.porte_empresa,
    n.desc_natureza_juridica
from empresas e
left join naturezas n
    on e.natureza_juridica = n.cod_natureza_juridica