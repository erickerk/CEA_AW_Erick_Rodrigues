with 
    produto as (
        select *
        from {{ ref('stg_erp__Produto') }}
    
    )

select *
from produto