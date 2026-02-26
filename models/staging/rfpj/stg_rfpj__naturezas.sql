with source as (

    select * from {{ source('bronze_rfpj', 'naturezas') }}

),

renamed as (

    select
        cast(codigo as int) as cod_natureza_juridica,
        trim(descricao) as desc_natureza_juridica
    from source

)

select * from renamed