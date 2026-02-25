select
    cnpj_completo,
    cnpj_basico,
    identificador_matriz_filial,
    nome_fantasia,
    nome_cnae,
    uf,
    municipio,
    situacao_cadastral

from {{ ref('int_estabelecimentos') }}
where situacao_cadastral = '02'