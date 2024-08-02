with    
    nome as (
        select *
        from {{ ref('stg_erp_nome_cliente') }}
    )

select *
from nome