with companies as (

    select
        porte_empresa,
        capital_social
    from {{ ref('empresas') }}

)

select
    porte_empresa as company_size,
    count(*) as total_companies,
    sum(capital_social) as total_capital,
    avg(capital_social) as avg_capital,
    min(capital_social) as min_capital,
    max(capital_social) as max_capital

from companies
group by 1