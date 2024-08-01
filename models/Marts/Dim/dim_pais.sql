with 
    pais as(
        select *
        from {{ ref('stg_erp__Pais') }}
    )

select *
from pais