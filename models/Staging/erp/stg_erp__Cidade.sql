with 
    renamed as (
        select 
          cast(addressid as int) as address_id,
          cast(addressline1 as varchar(255)) as address_line1,
          cast(addressline2 as varchar(255)) as address_line2,
          cast(city as varchar(255)) as city,
          cast(stateprovinceid as varchar) as state_province_id,
          cast(postalcode as varchar) as postal_code,
          cast(spatiallocation as varchar(255)) as spatial_location,
          cast(rowguid as varchar(255)) as row_guid,
          cast(modifieddate as date) as modified_date
        from {{ source('erp', 'ADDRESS') }}
    )

select *
from renamed



