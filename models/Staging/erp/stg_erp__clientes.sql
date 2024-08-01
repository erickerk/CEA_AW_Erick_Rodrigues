with 
    renamed as (
        select 
            cast(customerid as int) as id,
            cast(personid as int) as id_personal,
            cast(storeid as int) as id_historico,
            cast(territoryid as int) as territory_id,
            cast(rowguid as varchar) as row_guid,
            cast(modifieddate as date) as data_mod
        from {{ source('erp', 'CUSTOMER') }}
    )

select *
from renamed
