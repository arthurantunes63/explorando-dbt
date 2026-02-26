with source as (

    select * from {{ source('bronze_rfpj', 'cnaes') }}

),

renamed as (

    select
        cast(codigo as string) as cod_cnae,
        trim(descricao) as nome_cnae
    from source

)

select * from renamed