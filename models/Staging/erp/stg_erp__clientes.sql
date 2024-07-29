with 
    rennamed as (
        select * 
        , cast(CUSTOMERID as int) as ID
        , cast(PERSONID as int) as ID_personal
        , cast(STOREID as int) as ID_historico
        , cast(TERRITORYID as int) as TERRITORYID
        , cast(ROWGUID as varchar ) as ROWGUID
        , cast(MODIFIEDDATE as date) as data_mod
        from {{ source('erp', 'CUSTOMER') }}
    )

select *
from rennamed
