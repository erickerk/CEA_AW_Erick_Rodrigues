with 
    renamed as (
        select 
        cast(STATEPROVINCEID AS int) as PROVINCE_ID
        ,cast(STATEPROVINCECODE AS varchar) as PROVINCE_CODE
        ,cast(COUNTRYREGIONCODE AS varchar) as REGION_CODE
        ,cast(ISONLYSTATEPROVINCEFLAG AS varchar) as PROVINCE_FLAG
        ,cast(NAME AS varchar) as NAME
        ,cast(TERRITORYID AS int) as TERRITORY_ID
        ,cast(ROWGUID AS varchar) as ROW_GUID
        ,cast(MODIFIEDDATE AS date) as MODIFIED_DATE
        from {{ source('erp', 'STATEPROVINCE') }}
    )

select *
from renamed