{{ config(materialized='view') }}

with source as (

     {{ union_partitions('bronze_rfpj', 'empresas', 10) }}

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

select * from renamed