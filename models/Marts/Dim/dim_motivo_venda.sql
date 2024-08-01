with 
    motivo_venda as(
    select *
    from {{ ref('stg_erp__Motivo_Venda') }})

select *
from motivo_venda