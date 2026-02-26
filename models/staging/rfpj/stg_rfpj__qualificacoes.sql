with source as (

    select * from {{ source('bronze_rfpj', 'qualificacoes') }}

),

renamed as (

    select
        cast(codigo as int) as cod_qualificacao,
        trim(descricao) as desc_qualificacao
    from source

)

select * from renamed