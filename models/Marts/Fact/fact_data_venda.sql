with
    dt_venda as(
        select *
        from {{ ref('stg_erp__Dt_Venda') }}
    )

select *
from dt_venda