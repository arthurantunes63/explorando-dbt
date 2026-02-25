# explorando-dbt
Projeto desenvolvido para a reunião de projetos da empresa Datarisk com foco na ferramenta dbt.

- uv + pipx para gestão de dependências e ambiente virtual
- dbt core + Databricks Free Edition
- Utilização de autenticação OAuth com Service Principal
- Orquestração com Databricks Workflows

https://docs.getdbt.com/blog/kimball-dimensional-model

Explicação detalhada do que é o dbt?
https://www.getdbt.com/blog/what-exactly-is-dbt

https://docs.getdbt.com/docs/core/connect-data-platform/databricks-setup

     -----------> BUSSINESS DIRECTED
Staging -> Intermediate -> Marts
Sobre schemas em dev e produção - https://docs.getdbt.com/docs/core/connect-data-platform/connection-profiles#understanding-target-schemas

#### Inicializando um projeto no dbt
> dbtf init
> dbt init


#### Compilando os modelos criados
> dbtf compile
> dbt compile

