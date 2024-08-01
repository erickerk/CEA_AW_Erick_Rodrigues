with
    vendedor as(
        select *
        from {{ ref('stg_erp__Vendedor') }}
    )

select *
from vendedor
