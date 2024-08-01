with 
    estado as (
        select *
        from {{ ref('stg_erp__Estado') }}
    )

select *
from estado