{{ config(materialized='table') }}

with partners as (

    select
        cnpj_basico,
        faixa_etaria
    from {{ ref('int_socios') }}

),

aggregated as (

    select
        cnpj_basico,
        faixa_etaria,
        count(*) as toral_socios
    from partners
    group by 1,2

)

select * from aggregated