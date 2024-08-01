with 
    renamed as (
        select 
          cast(stateprovinceid as int) as province_id,
          cast(stateprovincecode as varchar) as province_code,
          cast(countryregioncode as varchar) as region_code,
          cast(isonlystateprovinceflag as varchar) as province_flag,
          cast(name as varchar) as name,
          cast(territoryid as int) as territory_id,
          cast(rowguid as varchar) as row_guid,
          cast(modifieddate as date) as modified_date
        from {{ source('erp', 'STATEPROVINCE') }}
    )

select *
from renamed
