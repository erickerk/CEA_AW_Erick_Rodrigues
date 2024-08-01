with 
    renamed as (
        select 
          cast(countryregioncode as varchar) as region_code,
          cast(name as varchar) as name,
          cast(modifieddate as date) as modified_date
        from {{ source('erp', 'COUNTRYREGION') }}
    )

select *
from renamed
