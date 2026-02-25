with socios as (

    select * from {{ ref('stg_rfpj__socios') }}

),

qualificacoes as (

    select * from {{ ref('stg_rfpj__qualificacoes') }}

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
    on s.qualificacao_socio = q.cod_qualificacao