select
    capital_social
from {{ ref('stg_rfpj__empresas') }}
where capital_social < 0