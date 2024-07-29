with 
    renamed as (
        select 
          cast(ADDRESSID as int) as ADDRESSID,
          cast(ADDRESSLINE1 as varchar(255)) as ADDRESSLINE1,
          cast(ADDRESSLINE2 as varchar(255)) as ADDRESSLINE2,
          cast(CITY as varchar(255)) as CITY,
          cast(STATEPROVINCEID as varchar) as STATEPROVINCEID,
          cast(POSTALCODE as varchar) as POSTALCODE,
          cast(SPATIALLOCATION as varchar(255)) as SPATIALLOCATION,
          cast(ROWGUID as varchar(255)) as ROWGUID,
          cast(MODIFIEDDATE as date) as MODIFIEDDATE
        from {{ source('erp', 'ADDRESS') }}
    )

select *
from renamed
