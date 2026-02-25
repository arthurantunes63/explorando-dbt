with companies as (

    select
        porte_empresa,
        capital_social
    from {{ ref('empresas') }}

),

aggregated as (

    select
        porte_empresa,
        count(*) as total_empresas_por_porte,
        sum(capital_social) as total_agregado_por_porte_empresas
    from companies
    group by 1

),

totals as (

    select
        sum(total_empresas_por_porte) as total_empresas,
        sum(total_agregado_por_porte_empresas) as total_agregado_capital_empresas
    from aggregated

)

select
    a.porte_empresa,
    a.total_empresas_por_porte,
    a.total_agregado_por_porte_empresas,

    -- % share of companies
    a.total_empresas_por_porte / t.total_empresas as percentual_participacao_empresa,

    -- % share of capital
    a.total_agregado_por_porte_empresas / t.total_agregado_capital_empresas as percentual_participal_capital_empresa

from aggregated a
cross join totals t