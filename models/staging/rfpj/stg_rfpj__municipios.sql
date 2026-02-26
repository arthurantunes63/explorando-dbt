with source as (

    select * from {{ source('bronze_rfpj', 'municipios') }}

),

renamed as (

    select
        cast(codigo as int) as cod_municipio,
        trim(descricao) as nome_municipio
    from source

)

select * from renamed