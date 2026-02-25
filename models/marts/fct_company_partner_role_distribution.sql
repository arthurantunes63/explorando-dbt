{{ config(materialized='table') }}

with partners as (

    select
        cnpj_basico,
        desc_qualificacao
    from {{ ref('int_socios') }}

)

select
    cnpj_basico,
    desc_qualificacao,
    count(*) as total_socios
from partners
group by 1,2