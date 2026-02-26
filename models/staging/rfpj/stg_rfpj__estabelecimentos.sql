with source as (

    {{ union_partitions('bronze_rfpj', 'estabelecimentos', 10) }}

),

renamed as (

    select
        lpad(cnpj_basico, 8, '0') as cnpj_basico,
        lpad(cnpj_ordem, 4, '0') as cnpj_ordem,
        lpad(cnpj_dv, 2, '0') as cnpj_dv,

        concat(cnpj_basico, cnpj_ordem, cnpj_dv) as cnpj_completo,

        identificador_matriz_filial,
        nome_fantasia,
        situacao_cadastral,

        cast( regexp_replace(municipio, '[a-zA-Z]', '0') as int) as municipio,
        uf,
        cnae_fiscal_principal,
        cnae_fiscal_secundaria

    from source

)

select * from renamed