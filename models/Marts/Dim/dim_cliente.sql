with 
cliente as (select *
from {{ ref('stg_erp__clientes') }}
)

select *
from cliente