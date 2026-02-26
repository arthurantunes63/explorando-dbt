with source as (

    {{ union_partitions('bronze_rfpj', 'socios', 10) }}

),

renamed as (

    select
        lpad(cnpj_basico, 8, '0') as cnpj_basico,
        identificador_socio,
        nome_socio,
        qualificacao_socio,
        to_date(data_entrada_sociedade, 'yyyyMMdd') as data_entrada_sociedade,
        faixa_etaria
    from source

)

select * from renamed