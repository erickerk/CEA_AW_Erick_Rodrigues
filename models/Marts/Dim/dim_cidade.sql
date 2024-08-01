with 
    cidade as (
        select *
        from {{ ref('stg_erp__Cidade') }}
    )

select *
from   cidade