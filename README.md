# Explorando o dbt
Projeto desenvolvido para a reunião de projetos da empresa Datarisk com foco na ferramenta dbt.
Para esse projeto dados abertos da Receita Federal foram definidos como as _sources_ para replicar um caso de uso mais próximo de um _pipeline_ do mundo real.

#### Ferramentas utilizadas
- uv + pipx para gestão de dependências e ambiente virtual
- dbt fusion cli + Databricks _Free Edition_
- Orquestração com Databricks Workflows

Inicializando um projeto no dbt
> dbtf init

Compilando os modelos criados
> dbtf compile

Gerando documentação automaticamente
> dbtf run

Executando os modelos
> dbtf run

Realizando testes nos dados
> dbtf test

Orquestrando execução de modelos, testes e snapshots
> dbtf build

Como posso garantir a consistência dos meus códigos SQL?
- (Formatador) SQLFluff: https://www.sqlfluff.com/
- (Linter) sqlfmt: https://sqlfmt.com/

* Sobre schemas em dev e produção verificar https://docs.getdbt.com/docs/core/connect-data-platform/connection-profiles#understanding-target-schemas.